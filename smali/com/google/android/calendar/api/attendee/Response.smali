.class public Lcom/google/android/calendar/api/attendee/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/attendee/Response$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/attendee/Response;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final comment:Ljava/lang/String;

.field public final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/google/android/calendar/api/attendee/Response$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/attendee/Response$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/attendee/Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/google/android/calendar/api/attendee/Response$Builder;

    invoke-direct {v0}, Lcom/google/android/calendar/api/attendee/Response$Builder;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/calendar/api/attendee/Response;->checkStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/attendee/Response$Builder;->setStatus(I)Lcom/google/android/calendar/api/attendee/Response$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/attendee/Response$Builder;->setComment(Ljava/lang/String;)Lcom/google/android/calendar/api/attendee/Response$Builder;

    move-result-object v0

    .line 100
    invoke-direct {p0, v0}, Lcom/google/android/calendar/api/attendee/Response;-><init>(Lcom/google/android/calendar/api/attendee/Response$Builder;)V

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/attendee/Response$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/attendee/Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/calendar/api/attendee/Response$Builder;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    # getter for: Lcom/google/android/calendar/api/attendee/Response$Builder;->mStatus:I
    invoke-static {p1}, Lcom/google/android/calendar/api/attendee/Response$Builder;->access$100(Lcom/google/android/calendar/api/attendee/Response$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/api/attendee/Response;->status:I

    .line 96
    # getter for: Lcom/google/android/calendar/api/attendee/Response$Builder;->mComment:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/calendar/api/attendee/Response$Builder;->access$200(Lcom/google/android/calendar/api/attendee/Response$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attendee/Response;->comment:Ljava/lang/String;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/api/attendee/Response$Builder;Lcom/google/android/calendar/api/attendee/Response$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/attendee/Response;-><init>(Lcom/google/android/calendar/api/attendee/Response$Builder;)V

    return-void
.end method

.method public static checkStatus(I)I
    .locals 2

    .prologue
    .line 83
    packed-switch p0, :pswitch_data_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid attendeeDescriptor type value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :pswitch_0
    return p0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 107
    if-ne p0, p1, :cond_1

    .line 108
    const/4 v0, 0x1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    instance-of v1, p1, Lcom/google/android/calendar/api/attendee/Response;

    if-eqz v1, :cond_0

    .line 114
    check-cast p1, Lcom/google/android/calendar/api/attendee/Response;

    .line 116
    iget v1, p0, Lcom/google/android/calendar/api/attendee/Response;->status:I

    iget v2, p1, Lcom/google/android/calendar/api/attendee/Response;->status:I

    if-ne v1, v2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/Response;->comment:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/calendar/api/attendee/Response;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/google/android/calendar/api/attendee/Response;->status:I

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/attendee/Response;->comment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/google/android/calendar/api/attendee/Response;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/Response;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return-void
.end method
