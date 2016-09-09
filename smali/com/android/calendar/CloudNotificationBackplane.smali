.class public interface abstract Lcom/android/calendar/CloudNotificationBackplane;
.super Ljava/lang/Object;
.source "CloudNotificationBackplane.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract open(Landroid/content/Context;)Z
.end method

.method public abstract send(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract subscribeToGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
