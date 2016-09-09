.class final Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel$1;
.super Ljava/lang/Object;
.source "MessageParceler.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;

    invoke-direct {v1, v0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;-><init>(Lcom/google/protobuf/nano/MessageNano;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel$ParcelerException;

    invoke-direct {v1, v0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel$ParcelerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;
    .locals 1

    .prologue
    .line 75
    new-array v0, p1, [Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel$1;->newArray(I)[Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;

    move-result-object v0

    return-object v0
.end method
