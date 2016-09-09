.class public Lcom/google/android/calendar/api/attendee/ContactId;
.super Ljava/lang/Object;
.source "ContactId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/attendee/ContactId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final identity:Ljava/lang/String;

.field public final namespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/calendar/api/attendee/ContactId$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/attendee/ContactId$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/attendee/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/api/attendee/ContactId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/attendee/ContactId$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/attendee/ContactId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 33
    invoke-static {p1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attendee/ContactId;->identity:Ljava/lang/String;

    .line 34
    invoke-static {p2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attendee/ContactId;->namespace:Ljava/lang/String;

    .line 35
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    if-ne p0, p1, :cond_1

    .line 45
    const/4 v0, 0x1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    instance-of v1, p1, Lcom/google/android/calendar/api/attendee/ContactId;

    if-eqz v1, :cond_0

    .line 51
    check-cast p1, Lcom/google/android/calendar/api/attendee/ContactId;

    .line 53
    iget-object v1, p0, Lcom/google/android/calendar/api/attendee/ContactId;->identity:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/calendar/api/attendee/ContactId;->identity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/ContactId;->namespace:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/calendar/api/attendee/ContactId;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/ContactId;->identity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 63
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/attendee/ContactId;->namespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/ContactId;->identity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/ContactId;->namespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return-void
.end method
