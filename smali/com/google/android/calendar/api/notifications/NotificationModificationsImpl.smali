.class public Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;
.super Ljava/lang/Object;
.source "NotificationModificationsImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/calendar/api/notifications/NotificationModifications;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    .line 27
    sget-object v0, Lcom/google/android/calendar/api/notifications/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mOriginal:Ljava/util/List;

    .line 28
    sget-object v0, Lcom/google/android/calendar/api/notifications/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    .line 20
    iput-object p1, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mOriginal:Ljava/util/List;

    .line 21
    iget-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mOriginal:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public addNotification(Lcom/google/android/calendar/api/notifications/Notification;)V
    .locals 1

    .prologue
    .line 33
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->isModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mOriginal:Ljava/util/List;

    goto :goto_0
.end method

.method public isModified()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 64
    iget-object v2, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mOriginal:Ljava/util/List;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mOriginal:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 68
    goto :goto_0

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mOriginal:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mOriginal:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public removeNotification(Lcom/google/android/calendar/api/notifications/Notification;)V
    .locals 1

    .prologue
    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public useCalendarDefaults()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mOriginal:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->mNotifications:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 91
    return-void
.end method
