.class public Lcom/android/calendar/newapi/screen/EventEditScreenLoader;
.super Lcom/android/calendar/newapi/common/CompositeLoader;
.source "EventEditScreenLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/common/CompositeLoader",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mCalendarStoreLoader:Lcom/android/calendar/newapi/common/CalendarStoreLoader;

.field private mEvent:Lcom/google/android/calendar/api/Event;

.field private mEventLoader:Lcom/android/calendar/newapi/common/EventLoader;

.field private mNotificationStoreLoader:Lcom/android/calendar/newapi/common/NotificationStoreLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/calendar/api/EventDescriptor;Lcom/google/android/calendar/api/Event;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/calendar/newapi/common/CompositeLoader;-><init>()V

    .line 41
    iput-object p3, p0, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->mEvent:Lcom/google/android/calendar/api/Event;

    .line 42
    new-instance v0, Lcom/android/calendar/newapi/common/CalendarStoreLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/newapi/common/CalendarStoreLoader;-><init>(Landroid/content/Context;[Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->mCalendarStoreLoader:Lcom/android/calendar/newapi/common/CalendarStoreLoader;

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->addLoader(Lcom/android/calendar/newapi/common/Loader;)V

    .line 43
    new-instance v0, Lcom/android/calendar/newapi/common/NotificationStoreLoader;

    invoke-direct {v0, p1}, Lcom/android/calendar/newapi/common/NotificationStoreLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->mNotificationStoreLoader:Lcom/android/calendar/newapi/common/NotificationStoreLoader;

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->addLoader(Lcom/android/calendar/newapi/common/Loader;)V

    .line 44
    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 45
    new-instance v0, Lcom/android/calendar/newapi/common/EventLoader;

    invoke-direct {v0, p2}, Lcom/android/calendar/newapi/common/EventLoader;-><init>(Lcom/google/android/calendar/api/EventDescriptor;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->mEventLoader:Lcom/android/calendar/newapi/common/EventLoader;

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->addLoader(Lcom/android/calendar/newapi/common/Loader;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public getCalendarStore()Lcom/android/calendar/newapi/model/CalendarStore;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->mCalendarStoreLoader:Lcom/android/calendar/newapi/common/CalendarStoreLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/common/CalendarStoreLoader;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/CalendarStore;

    return-object v0
.end method

.method public getEvent()Lcom/google/android/calendar/api/Event;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->mEvent:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->mEvent:Lcom/google/android/calendar/api/Event;

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->mEventLoader:Lcom/android/calendar/newapi/common/EventLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/common/EventLoader;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/Event;

    goto :goto_0
.end method

.method public getNotificationStore()Lcom/android/calendar/newapi/model/NotificationStore;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->mNotificationStoreLoader:Lcom/android/calendar/newapi/common/NotificationStoreLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/common/NotificationStoreLoader;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/NotificationStore;

    return-object v0
.end method
