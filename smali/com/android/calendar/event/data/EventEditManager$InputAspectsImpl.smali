.class public Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;
.super Ljava/lang/Object;
.source "EventEditManager.java"

# interfaces
.implements Lcom/android/calendar/event/data/InputAspectColor;
.implements Lcom/android/calendar/event/data/InputAspectHangout;
.implements Lcom/android/calendar/event/data/InputAspectNotification;
.implements Lcom/android/calendar/event/data/InputAspectRecurrence;
.implements Lcom/android/calendar/event/data/InputAspectTime;
.implements Lcom/android/calendar/event/data/InputAspectTitle;
.implements Lcom/android/calendar/event/data/InputAspectVisibility;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/EventEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputAspectsImpl"
.end annotation


# instance fields
.field private mBackgroundColorChangeRefreshListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarChangeRefreshListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private mColorListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final mImplementedAspects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/calendar/editor/AspectKey",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

.field final synthetic this$0:Lcom/android/calendar/event/data/EventEditManager;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 2

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1547
    const/4 v0, -0x1

    .line 1548
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;->from(I)Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    .line 1551
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/data/EventEditManager;->TITLE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 1552
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/data/EventEditManager;->TIME_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 1553
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/data/EventEditManager;->COLOR_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 1554
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/data/EventEditManager;->NOTIFICATION_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 1555
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/data/EventEditManager;->HANGOUT_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 1556
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/data/EventEditManager;->RECURRENCE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 1557
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/data/EventEditManager;->VISIBILITY_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 1558
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 1559
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mImplementedAspects:Ljava/util/Set;

    .line 1562
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl$1;-><init>(Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;)V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 1572
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl$2;-><init>(Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;)V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mColorListener:Lcom/google/calendar/v2/client/service/common/Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mCalendarChangeRefreshListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mBackgroundColorChangeRefreshListeners:Ljava/util/List;

    return-object v0
.end method

.method private addBackgroundColorChangeRefreshListener(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mBackgroundColorChangeRefreshListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mBackgroundColorChangeRefreshListeners:Ljava/util/List;

    .line 1790
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableBackgroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mColorListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 1792
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mBackgroundColorChangeRefreshListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1793
    return-void
.end method

.method private addCalendarChangeRefreshListener(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mCalendarChangeRefreshListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mCalendarChangeRefreshListeners:Ljava/util/List;

    .line 1771
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableCalendar()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mCalendarChangeRefreshListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1774
    return-void
.end method

.method private removeBackgroundColorChangeRefreshListener(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mBackgroundColorChangeRefreshListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1804
    :cond_0
    :goto_0
    return-void

    .line 1799
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mBackgroundColorChangeRefreshListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1800
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mBackgroundColorChangeRefreshListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mBackgroundColorChangeRefreshListeners:Ljava/util/List;

    .line 1802
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableBackgroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mColorListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    goto :goto_0
.end method

.method private removeCalendarChangeRefreshListener(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mCalendarChangeRefreshListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1780
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mCalendarChangeRefreshListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1781
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mCalendarChangeRefreshListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mCalendarChangeRefreshListeners:Ljava/util/List;

    .line 1783
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableCalendar()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    goto :goto_0
.end method


# virtual methods
.method public addCanChangeRecurrenceListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    # setter for: Lcom/android/calendar/event/data/EventEditManager;->mCanChangeRecurrenceListener:Lcom/google/calendar/v2/client/service/common/Listener;
    invoke-static {v0, p1}, Lcom/android/calendar/event/data/EventEditManager;->access$402(Lcom/android/calendar/event/data/EventEditManager;Lcom/google/calendar/v2/client/service/common/Listener;)Lcom/google/calendar/v2/client/service/common/Listener;

    .line 1861
    return-void
.end method

.method public addColorRefreshListener(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1756
    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->addCalendarChangeRefreshListener(Ljava/lang/Runnable;)V

    .line 1757
    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->addBackgroundColorChangeRefreshListener(Ljava/lang/Runnable;)V

    .line 1758
    return-void
.end method

.method public addNotificationRefreshListener(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1716
    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->addCalendarChangeRefreshListener(Ljava/lang/Runnable;)V

    .line 1717
    return-void
.end method

.method public attendees()Lcom/google/calendar/v2/client/service/common/ObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableAttendees()Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    move-result-object v0

    return-object v0
.end method

.method public autoAddHangout()Z
    .locals 3

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    .line 1811
    instance-of v1, v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-eqz v1, :cond_0

    .line 1812
    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 1813
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 1814
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v1, v1, Lcom/android/calendar/event/data/EventEditManager;->mHelper:Lcom/android/calendar/event/EditHelper;

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v2, v2, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/android/calendar/event/EditHelper;->getAutoAddHangout(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1816
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calendar()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableCalendar()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    return-object v0
.end method

.method public canChangeColor()Z
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeColor()Z

    move-result v0

    return v0
.end method

.method public canChangeHangout()Z
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeHangout()Z

    move-result v0

    return v0
.end method

.method public canChangeNotifications()Z
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeReminders()Z

    move-result v0

    return v0
.end method

.method public canChangeRecurrence()Z
    .locals 1

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    # getter for: Lcom/android/calendar/event/data/EventEditManager;->mHideSegments:Z
    invoke-static {v0}, Lcom/android/calendar/event/data/EventEditManager;->access$200(Lcom/android/calendar/event/data/EventEditManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeTime()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canChangeTime()Z
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeTime()Z

    move-result v0

    return v0
.end method

.method public canChangeTitle()Z
    .locals 1

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeTitle()Z

    move-result v0

    return v0
.end method

.method public canChangeVisibility()Z
    .locals 2

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 1888
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangePrivacy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1889
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->isSharedWithOthers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1888
    :goto_0
    return v0

    .line 1889
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableSmartNotifications(Z)V
    .locals 0

    .prologue
    .line 1712
    return-void
.end method

.method public getColorOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEventColorList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    return-object v0
.end method

.method public getUnlistedColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 1744
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMoreOptionsButtonClicked()V
    .locals 2

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/event/data/EventEditManager;->mHideSegments:Z
    invoke-static {v0, v1}, Lcom/android/calendar/event/data/EventEditManager;->access$202(Lcom/android/calendar/event/data/EventEditManager;Z)Z

    .line 1628
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    # getter for: Lcom/android/calendar/event/data/EventEditManager;->mHiddenSegments:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/calendar/event/data/EventEditManager;->access$300(Lcom/android/calendar/event/data/EventEditManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 1629
    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->showOrHide()V

    goto :goto_0

    .line 1631
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    # getter for: Lcom/android/calendar/event/data/EventEditManager;->mHiddenSegments:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/calendar/event/data/EventEditManager;->access$300(Lcom/android/calendar/event/data/EventEditManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1632
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    # getter for: Lcom/android/calendar/event/data/EventEditManager;->mCanChangeRecurrenceListener:Lcom/google/calendar/v2/client/service/common/Listener;
    invoke-static {v0}, Lcom/android/calendar/event/data/EventEditManager;->access$400(Lcom/android/calendar/event/data/EventEditManager;)Lcom/google/calendar/v2/client/service/common/Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 1633
    return-void
.end method

.method public implementsAspect(Lcom/android/calendar/editor/AspectKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/editor/AspectKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mImplementedAspects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public includeSecretVisibility()Z
    .locals 1

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->hasSmartMail()Z

    move-result v0

    return v0
.end method

.method public isExchangeNotifications()Z
    .locals 2

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    .line 1681
    instance-of v1, v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-eqz v1, :cond_0

    .line 1682
    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountType()Ljava/lang/String;

    move-result-object v0

    .line 1683
    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->isExchangeType(Ljava/lang/String;)Z

    move-result v0

    .line 1686
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/EventEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSavedAsAllDay()Z
    .locals 1

    .prologue
    .line 1647
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->isNew()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/EventEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTask()Z
    .locals 1

    .prologue
    .line 1637
    const/4 v0, 0x0

    return v0
.end method

.method public isThorSupported()Z
    .locals 5

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    .line 1822
    instance-of v1, v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-nez v1, :cond_0

    .line 1823
    const/4 v0, 0x0

    .line 1826
    :goto_0
    return v0

    .line 1825
    :cond_0
    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 1826
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v1, v1, Lcom/android/calendar/event/data/EventEditManager;->mHelper:Lcom/android/calendar/event/EditHelper;

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v2, v2, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    .line 1827
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getOwnerAccount()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 1828
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountType()Ljava/lang/String;

    move-result-object v0

    .line 1826
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/calendar/event/EditHelper;->isThorSupportedForCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public mutableColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableLabelColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    return-object v0
.end method

.method public mutableDefaultDuration()Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    return-object v0
.end method

.method public mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    return-object v0
.end method

.method public mutableHangout()Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;
    .locals 1

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableHangout()Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;

    move-result-object v0

    return-object v0
.end method

.method public mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    return-object v0
.end method

.method public mutableNotifications()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableReminders()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    return-object v0
.end method

.method public mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    move-result-object v0

    return-object v0
.end method

.method public mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    return-object v0
.end method

.method public mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 1664
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->hasHiddenPrivateDetails()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->busy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1666
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    .line 1668
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    goto :goto_0
.end method

.method public mutableVisibility()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Visibility;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableVisibility()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    return-object v0
.end method

.method public notificationSet()Lcom/android/calendar/event/edit/CalendarNotificationSet;
    .locals 2

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/EventEditManager;->mCalendarNotificationsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v1}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;

    return-object v0
.end method

.method public observableIsAllDay()Lcom/google/calendar/v2/client/service/common/ObservableBoolean;
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    return-object v0
.end method

.method public removeCanChangeRecurrenceListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/event/data/EventEditManager;->mCanChangeRecurrenceListener:Lcom/google/calendar/v2/client/service/common/Listener;
    invoke-static {v0, v1}, Lcom/android/calendar/event/data/EventEditManager;->access$402(Lcom/android/calendar/event/data/EventEditManager;Lcom/google/calendar/v2/client/service/common/Listener;)Lcom/google/calendar/v2/client/service/common/Listener;

    .line 1866
    return-void
.end method

.method public removeColorRefreshListener(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1762
    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->removeCalendarChangeRefreshListener(Ljava/lang/Runnable;)V

    .line 1763
    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->removeBackgroundColorChangeRefreshListener(Ljava/lang/Runnable;)V

    .line 1764
    return-void
.end method

.method public removeNotificationRefreshListener(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1721
    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->removeCalendarChangeRefreshListener(Ljava/lang/Runnable;)V

    .line 1722
    return-void
.end method

.method public showMoreOptionsButton()Z
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    # getter for: Lcom/android/calendar/event/data/EventEditManager;->mHideSegments:Z
    invoke-static {v0}, Lcom/android/calendar/event/data/EventEditManager;->access$200(Lcom/android/calendar/event/data/EventEditManager;)Z

    move-result v0

    return v0
.end method

.method public smartNotificationsEnabled()Z
    .locals 1

    .prologue
    .line 1706
    const/4 v0, 0x0

    return v0
.end method

.method public useDefaultDuration()Z
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isNewEvent()Z

    move-result v0

    return v0
.end method
