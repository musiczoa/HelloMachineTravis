package me.insertcoin.hellomachine;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

import insertcoin.me.hellomachine.R;
import me.insertcoin.hellomachine.swig.Greeter;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Greeter greeter = new Greeter();
        ((TextView)findViewById(R.id.textView)).setText(greeter.Greet("안녕?"));
    }
}
