.class final Lcom/android/emailcommon/provider/RecipientAvailability$1;
.super Ljava/lang/Object;
.source "RecipientAvailability.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/RecipientAvailability;
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
        "Lcom/android/emailcommon/provider/RecipientAvailability;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/provider/RecipientAvailability;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/android/emailcommon/provider/RecipientAvailability;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/RecipientAvailability;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/emailcommon/provider/RecipientAvailability;->type:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/RecipientAvailability;->emailAddress:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/RecipientAvailability;->displayName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/RecipientAvailability;->mergedFreeBusy:Ljava/lang/String;

    .line 62
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/RecipientAvailability$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/provider/RecipientAvailability;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/emailcommon/provider/RecipientAvailability;
    .locals 1

    .prologue
    .line 67
    new-array v0, p1, [Lcom/android/emailcommon/provider/RecipientAvailability;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/RecipientAvailability$1;->newArray(I)[Lcom/android/emailcommon/provider/RecipientAvailability;

    move-result-object v0

    return-object v0
.end method
