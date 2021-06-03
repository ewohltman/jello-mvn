package com.github.ewohltman;

public class Leaky {

    private native void leak();

    static {
        System.loadLibrary("Leaky");
    }

    public static void main(String[] args) {
        new Leaky().leak();
    }

}
