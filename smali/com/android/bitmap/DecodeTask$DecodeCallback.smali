.class public interface abstract Lcom/android/bitmap/DecodeTask$DecodeCallback;
.super Ljava/lang/Object;
.source "DecodeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bitmap/DecodeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DecodeCallback"
.end annotation


# virtual methods
.method public abstract onDecodeBegin(Lcom/android/bitmap/RequestKey;)V
.end method

.method public abstract onDecodeCancel(Lcom/android/bitmap/RequestKey;)V
.end method

.method public abstract onDecodeComplete(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)V
.end method
