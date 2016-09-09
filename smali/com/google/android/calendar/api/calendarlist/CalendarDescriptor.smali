.class public Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;
.super Ljava/lang/Object;
.source "CalendarDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mCalendarId:Ljava/lang/String;

.field private final mLocalId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mAccount:Landroid/accounts/Account;

    .line 23
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mCalendarId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mLocalId:Ljava/lang/Long;

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 28
    const-class v0, Landroid/accounts/Account;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-class v1, Ljava/lang/Long;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 28
    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 52
    goto :goto_0

    .line 55
    :cond_3
    check-cast p1, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 57
    iget-object v2, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mAccount:Landroid/accounts/Account;

    iget-object v3, p1, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mCalendarId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mCalendarId:Ljava/lang/String;

    .line 58
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mLocalId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mLocalId:Ljava/lang/Long;

    .line 59
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getCalendarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mCalendarId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mLocalId:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 64
    .line 66
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mCalendarId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mLocalId:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 69
    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mLocalId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    const-string v0, "CalendarDescriptor{account=%s, calendarId=%s, localId=\'%s\'}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mAccount:Landroid/accounts/Account;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mCalendarId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mLocalId:Ljava/lang/Long;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mCalendarId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->mLocalId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 88
    return-void
.end method
