.class public interface abstract Lio/grpc/internal/MessageDeframer$Listener;
.super Ljava/lang/Object;
.source "MessageDeframer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/MessageDeframer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract bytesRead(I)V
.end method

.method public abstract deliveryStalled()V
.end method

.method public abstract endOfStream()V
.end method

.method public abstract messageRead(Ljava/io/InputStream;)V
.end method
