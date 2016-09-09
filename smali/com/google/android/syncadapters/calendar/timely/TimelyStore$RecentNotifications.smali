.class public Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;
.super Ljava/lang/Object;
.source "TimelyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/TimelyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentNotifications"
.end annotation


# instance fields
.field private final mNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;->mNotifications:Ljava/util/List;

    .line 1541
    return-void
.end method


# virtual methods
.method public addNotification(Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;->mNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1545
    return-void
.end method

.method public getAllNotifications()[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
    .locals 2

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;->mNotifications:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;->mNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    return-object v0
.end method
