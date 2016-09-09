.class public Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;
.super Ljava/lang/Object;
.source "MessageParceler.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageParcel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel$ParcelerException;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;",
            ">;"
        }
    .end annotation
.end field

.field private static currentVersionNumber:I


# instance fields
.field private message:Lcom/google/protobuf/nano/MessageNano;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;->currentVersionNumber:I

    .line 51
    new-instance v0, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel$1;

    invoke-direct {v0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;->message:Lcom/google/protobuf/nano/MessageNano;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;->message:Lcom/google/protobuf/nano/MessageNano;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;->currentVersionNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;->message:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;->message:Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 86
    return-void
.end method
