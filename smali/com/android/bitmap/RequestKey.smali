.class public interface abstract Lcom/android/bitmap/RequestKey;
.super Ljava/lang/Object;
.source "RequestKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bitmap/RequestKey$Cancelable;,
        Lcom/android/bitmap/RequestKey$FileDescriptorFactory;,
        Lcom/android/bitmap/RequestKey$Callback;
    }
.end annotation


# virtual methods
.method public abstract createFileDescriptorFactoryOrByteArrayAsync(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/RequestKey$Callback;)Lcom/android/bitmap/RequestKey$Cancelable;
.end method

.method public abstract createInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract hasOrientationExif()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
