.class public Lcom/google/android/calendar/timely/location/Dampener;
.super Ljava/lang/Object;
.source "Dampener.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/timely/location/Dampener$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/calendar/timely/location/Dampener$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/timely/location/Dampener$Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mDelay:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(ILcom/google/android/calendar/timely/location/Dampener$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/calendar/timely/location/Dampener$Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/location/Dampener;->mHandler:Landroid/os/Handler;

    .line 27
    iput p1, p0, Lcom/google/android/calendar/timely/location/Dampener;->mDelay:I

    .line 28
    iput-object p2, p0, Lcom/google/android/calendar/timely/location/Dampener;->mCallback:Lcom/google/android/calendar/timely/location/Dampener$Callback;

    .line 29
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lcom/google/android/calendar/timely/location/Dampener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    iget-object v0, p0, Lcom/google/android/calendar/timely/location/Dampener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/calendar/timely/location/Dampener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/calendar/timely/location/Dampener;->mDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 34
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/calendar/timely/location/Dampener;->mCallback:Lcom/google/android/calendar/timely/location/Dampener$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/timely/location/Dampener$Callback;->handleDampened(Ljava/lang/Object;)V

    .line 40
    const/4 v0, 0x1

    return v0
.end method
