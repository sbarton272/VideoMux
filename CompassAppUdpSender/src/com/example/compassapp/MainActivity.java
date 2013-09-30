package com.example.compassapp;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;

import android.app.Activity;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity extends Activity implements SensorEventListener {

	// define the display assembly compass picture
	private ImageView image;

	// record the compass picture angle turned
	private float currentDegree = 0f;

	// device sensor manager
	private SensorManager mSensorManager;

	TextView tvHeading;
	EditText ipText;
	Button ipButton;

	boolean udpRun = false;

	final int port = 4000;

	float degree = 0;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		// our compass image
		image = (ImageView) findViewById(R.id.imageViewCompass);

		// TextView that will tell the user what degree is he heading
		tvHeading = (TextView) findViewById(R.id.tvHeading);

		// EditText to input the IP
		ipText = (EditText) findViewById(R.id.editText1);

		ipButton = (Button) findViewById(R.id.button1);

		ipButton.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				udpRun = true;

				new Thread(){
					public void run(){
						DatagramSocket s;
						while(true) {
							if (udpRun) {
								try {
									s = new DatagramSocket();
									InetAddress local = InetAddress.getByName(ipText.getText().toString());
									String messageStr = Float.toString(degree);
									byte[] message = messageStr.getBytes();
									DatagramPacket p = new DatagramPacket(message, messageStr.length(), local,
											port);
									s.send(p);
									Log.d("sent", messageStr);
									Thread.sleep(1000);
								} catch (SocketException e) {
									// Auto-generated catch block
									e.printStackTrace();
								} catch (UnknownHostException e) {
									// Auto-generated catch block
									e.printStackTrace();
								} catch (IOException e) {
									// Auto-generated catch block
									e.printStackTrace();
								} catch (InterruptedException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							}
						}
					}
				}.start();
			}
		});

		// initialize your android device sensor capabilities
		mSensorManager = (SensorManager) getSystemService(SENSOR_SERVICE);
	}

	@Override
	protected void onResume() {
		super.onResume();
		
		udpRun = true;

		// for the system's orientation sensor registered listeners
		mSensorManager.registerListener(this, mSensorManager.getDefaultSensor(Sensor.TYPE_ORIENTATION),
				SensorManager.SENSOR_DELAY_GAME);
	}

	@Override
	protected void onPause() {
		super.onPause();

		udpRun = false;
		
		// to stop the listener and save battery
		mSensorManager.unregisterListener(this);
	}

	@Override
	public void onSensorChanged(SensorEvent event) {

		// get the angle around the z-axis rotated
		degree = Math.round(event.values[0]);

		tvHeading.setText("Heading: " + Float.toString(degree) + " degrees");

		// create a rotation animation (reverse turn degree degrees)
		RotateAnimation ra = new RotateAnimation(
				currentDegree, 
				-degree,
				Animation.RELATIVE_TO_SELF, 0.5f, 
				Animation.RELATIVE_TO_SELF,
				0.5f);

		// how long the animation will take place
		ra.setDuration(210);

		// set the animation after the end of the reservation status
		ra.setFillAfter(true);

		// Start the animation
		image.startAnimation(ra);
		currentDegree = -degree;

		/*
		String messageStr = Float.toString(degree);
		DatagramSocket s;
		try {
			s = new DatagramSocket();
			InetAddress local = InetAddress.getByName("127.0.0.1");
			byte[] message = messageStr.getBytes();
			DatagramPacket p = new DatagramPacket(message, messageStr.length(), local,
					port);
			s.send(p);
			Log.d("sent", messageStr);
		} catch (SocketException e) {
			// Auto-generated catch block
			e.printStackTrace();
		} catch (UnknownHostException e) {
			// Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// Auto-generated catch block
			e.printStackTrace();
		}
		 */
	}

	@Override
	public void onAccuracyChanged(Sensor sensor, int accuracy) {
		// not in use
	}
}
