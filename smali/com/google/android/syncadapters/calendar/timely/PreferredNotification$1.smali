.class final Lcom/google/android/syncadapters/calendar/timely/PreferredNotification$1;
.super Ljava/lang/Object;
.source "PreferredNotification.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    invoke-direct {v0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
    .locals 1

    .prologue
    .line 90
    new-array v0, p1, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification$1;->newArray(I)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v0

    return-object v0
.end method