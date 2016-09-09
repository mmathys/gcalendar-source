.class public Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
.super Ljava/lang/Object;
.source "PreferredNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllDay:I

.field private final mMethod:I

.field private final mMinutes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification$1;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification$1;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mAllDay:I

    .line 27
    iput p2, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mMinutes:I

    .line 28
    iput p3, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mMethod:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;-><init>(III)V

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 105
    :cond_1
    :goto_0
    return v0

    .line 100
    :cond_2
    if-eq p1, p0, :cond_1

    .line 104
    check-cast p1, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    .line 105
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->isAllDay()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->isAllDay()Z

    move-result v3

    if-ne v2, v3, :cond_3

    .line 106
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMethod()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMethod()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 107
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMinutesBefore()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMinutesBefore()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mMethod:I

    return v0
.end method

.method public getMinutesBefore()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mMinutes:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 112
    .line 114
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 115
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mMethod:I

    add-int/2addr v0, v1

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mMinutes:I

    add-int/2addr v0, v1

    .line 118
    return v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mAllDay:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 54
    const-string v1, "allday"

    iget v2, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mAllDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v1, "minutes"

    iget v2, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mMinutes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const-string v1, "method"

    iget v2, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mMethod:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v0, "All day? "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mAllDay:I

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v0, "Minutes: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mMinutes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v0, "Method: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mMethod:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mAllDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mMinutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->mMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return-void
.end method
