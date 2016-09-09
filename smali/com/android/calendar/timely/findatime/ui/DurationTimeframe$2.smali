.class final Lcom/android/calendar/timely/findatime/ui/DurationTimeframe$2;
.super Ljava/lang/Object;
.source "DurationTimeframe.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe$2;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 51
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe$2;->newArray(I)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
