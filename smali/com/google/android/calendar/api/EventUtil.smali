.class Lcom/google/android/calendar/api/EventUtil;
.super Ljava/lang/Object;
.source "EventUtil.java"


# direct methods
.method static checkAvailability(I)I
    .locals 2

    .prologue
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid availability value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :pswitch_0
    return p0

    .line 22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static checkVisibility(I)I
    .locals 2

    .prologue
    .line 10
    packed-switch p0, :pswitch_data_0

    .line 16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid visibility value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :pswitch_0
    return p0

    .line 10
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
