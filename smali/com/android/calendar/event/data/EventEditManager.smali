.class public Lcom/android/calendar/event/data/EventEditManager;
.super Lcom/android/calendar/event/data/AbstractEditManager;
.source "EventEditManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;,
        Lcom/android/calendar/event/data/EventEditManager$FindTimeSupportLoader;,
        Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/data/AbstractEditManager",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/EventEdit;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTENDEE_IS_NOT_SELF:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTENDEE_IS_SELF:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/event/data/InputAspectColor;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/event/data/EventEditManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final HANGOUT_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/event/data/InputAspectHangout;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/event/data/InputAspectNotification;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECURRENCE_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/event/data/InputAspectRecurrence;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final TIME_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/event/data/InputAspectTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/event/data/InputAspectTitle;",
            ">;"
        }
    .end annotation
.end field

.field public static final VISIBILITY_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/event/data/InputAspectVisibility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mCalendarNotificationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            "Lcom/android/calendar/event/edit/CalendarNotificationSet;",
            ">;"
        }
    .end annotation
.end field

.field private mCanChangeRecurrenceListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mColorCache:Lcom/android/calendar/ColorCache;

.field protected mDefaultNotificationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            "Lcom/android/calendar/event/edit/CalendarNotificationSet;",
            ">;"
        }
    .end annotation
.end field

.field mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

.field private final mExtrasCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/calendar/event/EventExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final mFindTimeSupportCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHiddenSegments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/calendar/editor/EditSegment;",
            ">;"
        }
    .end annotation
.end field

.field private mHideSegments:Z

.field protected mInputAspects:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

.field private mLogMetrics:Lcom/android/calendar/event/data/EventEditLogMetrics;

.field private mModificiationListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

.field private final mNotificationsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            "Lcom/android/calendar/event/edit/CalendarNotificationSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRestored:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    const-class v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/EventEditManager;->TAG:Ljava/lang/String;

    .line 135
    const-string v0, "com.android.calendar.event.title"

    const-class v1, Lcom/android/calendar/event/data/InputAspectTitle;

    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/EventEditManager;->TITLE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 137
    const-string v0, "com.android.calendar.event.time"

    const-class v1, Lcom/android/calendar/event/data/InputAspectTime;

    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/EventEditManager;->TIME_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 139
    const-string v0, "com.android.calendar.event.color"

    const-class v1, Lcom/android/calendar/event/data/InputAspectColor;

    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/EventEditManager;->COLOR_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 141
    const-string v0, "com.android.calendar.event.notification"

    const-class v1, Lcom/android/calendar/event/data/InputAspectNotification;

    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/EventEditManager;->NOTIFICATION_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 143
    const-string v0, "com.android.calendar.event.hangout"

    const-class v1, Lcom/android/calendar/event/data/InputAspectHangout;

    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/EventEditManager;->HANGOUT_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 145
    const-string v0, "com.android.calendar.event.recurrence"

    const-class v1, Lcom/android/calendar/event/data/InputAspectRecurrence;

    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/EventEditManager;->RECURRENCE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 147
    const-string v0, "com.android.calendar.event.visibility"

    const-class v1, Lcom/android/calendar/event/data/InputAspectVisibility;

    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/EventEditManager;->VISIBILITY_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 150
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$1;

    invoke-direct {v0}, Lcom/android/calendar/event/data/EventEditManager$1;-><init>()V

    sput-object v0, Lcom/android/calendar/event/data/EventEditManager;->ATTENDEE_IS_SELF:Lcom/google/common/base/Predicate;

    .line 157
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager;->ATTENDEE_IS_SELF:Lcom/google/common/base/Predicate;

    .line 158
    invoke-static {v0}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/EventEditManager;->ATTENDEE_IS_NOT_SELF:Lcom/google/common/base/Predicate;

    .line 473
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$6;

    invoke-direct {v0}, Lcom/android/calendar/event/data/EventEditManager$6;-><init>()V

    sput-object v0, Lcom/android/calendar/event/data/EventEditManager;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/app/LoaderManager;I)V
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/data/AbstractEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mCalendarNotificationsMap:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mDefaultNotificationsMap:Ljava/util/Map;

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mHiddenSegments:Ljava/util/Set;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mHideSegments:Z

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mCanChangeRecurrenceListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 205
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/data/EventEditManager$2;-><init>(Lcom/android/calendar/event/data/EventEditManager;)V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mModificiationListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

    .line 224
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/data/EventEditManager$3;-><init>(Lcom/android/calendar/event/data/EventEditManager;)V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtrasCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 287
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/data/EventEditManager$4;-><init>(Lcom/android/calendar/event/data/EventEditManager;)V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mNotificationsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 359
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$5;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/data/EventEditManager$5;-><init>(Lcom/android/calendar/event/data/EventEditManager;)V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mFindTimeSupportCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 392
    new-instance v0, Lcom/android/calendar/ColorCache;

    invoke-direct {v0}, Lcom/android/calendar/ColorCache;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mColorCache:Lcom/android/calendar/ColorCache;

    .line 393
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/AbstractEditManager;-><init>(Landroid/os/Parcel;)V

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mCalendarNotificationsMap:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mDefaultNotificationsMap:Ljava/util/Map;

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mHiddenSegments:Ljava/util/Set;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mHideSegments:Z

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mCanChangeRecurrenceListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 205
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/data/EventEditManager$2;-><init>(Lcom/android/calendar/event/data/EventEditManager;)V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mModificiationListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

    .line 224
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/data/EventEditManager$3;-><init>(Lcom/android/calendar/event/data/EventEditManager;)V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtrasCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 287
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/data/EventEditManager$4;-><init>(Lcom/android/calendar/event/data/EventEditManager;)V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mNotificationsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 359
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$5;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/data/EventEditManager$5;-><init>(Lcom/android/calendar/event/data/EventEditManager;)V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mFindTimeSupportCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 397
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/EventEditLogMetrics;

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mLogMetrics:Lcom/android/calendar/event/data/EventEditLogMetrics;

    .line 398
    new-instance v0, Lcom/android/calendar/ColorCache;

    invoke-direct {v0}, Lcom/android/calendar/ColorCache;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mColorCache:Lcom/android/calendar/ColorCache;

    .line 399
    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/event/data/EventEditManager;)Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mHideSegments:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/calendar/event/data/EventEditManager;Z)Z
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/calendar/event/data/EventEditManager;->mHideSegments:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/calendar/event/data/EventEditManager;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mHiddenSegments:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/event/data/EventEditManager;)Lcom/google/calendar/v2/client/service/common/Listener;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mCanChangeRecurrenceListener:Lcom/google/calendar/v2/client/service/common/Listener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/event/data/EventEditManager;Lcom/google/calendar/v2/client/service/common/Listener;)Lcom/google/calendar/v2/client/service/common/Listener;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/calendar/event/data/EventEditManager;->mCanChangeRecurrenceListener:Lcom/google/calendar/v2/client/service/common/Listener;

    return-object p1
.end method

.method private applyAttendeeChanges(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V
    .locals 4

    .prologue
    .line 1143
    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/EventEditManager;->getAttendeesExcludingSelf(Lcom/google/calendar/v2/client/service/api/events/Event;)Ljava/util/Collection;

    move-result-object v0

    .line 1145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1146
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 1147
    invoke-direct {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->convertFromV2Attendee(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Lcom/android/calendar/event/CalendarEventModel$Attendee;

    move-result-object v0

    .line 1148
    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    .line 1154
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1157
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1161
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 1162
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/CalendarEventModel;->addAttendee(Lcom/android/calendar/event/CalendarEventModel$Attendee;)V

    goto :goto_2

    .line 1165
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    iput v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mNumOfAttendees:I

    .line 1168
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getAttendees()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/data/EventEditManager;->ATTENDEE_IS_SELF:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->tryFind(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 1169
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1170
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 1171
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getResponse()Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/event/data/EventEditManager;->getStatusFromResponse(Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;)I

    move-result v2

    iput v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    .line 1172
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOrganizer()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    .line 1180
    :goto_3
    return-void

    .line 1175
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isOrganizerCopy()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    .line 1176
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-eqz v0, :cond_6

    .line 1177
    const/4 v0, 0x1

    .line 1178
    :goto_4
    iput v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static convertFromAvailabilityV2(Lcom/google/calendar/v2/client/service/api/events/Availability;)I
    .locals 2

    .prologue
    .line 1196
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Availability:[I

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/events/Availability;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1200
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1198
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private convertFromV2Attendee(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Lcom/android/calendar/event/CalendarEventModel$Attendee;
    .locals 5

    .prologue
    .line 1284
    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/EventEditManager;->getAttendeeEmail(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Ljava/lang/String;

    move-result-object v1

    .line 1285
    if-nez v1, :cond_0

    .line 1286
    const/4 v0, 0x0

    .line 1291
    :goto_0
    return-object v0

    .line 1288
    :cond_0
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getFallbackNameInternal()Ljava/lang/String;

    move-result-object v2

    .line 1289
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getResponse()Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/event/data/EventEditManager;->getStatusFromResponse(Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;)I

    move-result v3

    .line 1290
    const/4 v4, 0x0

    .line 1291
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/calendar/event/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private static convertFromVisibilityV2(Lcom/google/calendar/v2/client/service/api/events/Visibility;)I
    .locals 2

    .prologue
    .line 1214
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Visibility:[I

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/events/Visibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1223
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1216
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 1219
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1221
    :pswitch_2
    const/16 v0, 0x64

    goto :goto_0

    .line 1214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private convertToAttendees([Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    if-nez p1, :cond_1

    .line 839
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 848
    :cond_0
    return-object v0

    .line 841
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 842
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 843
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 844
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 845
    invoke-static {v3}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static convertToAvailabilityV2(I)Lcom/google/calendar/v2/client/service/api/events/Availability;
    .locals 1

    .prologue
    .line 1205
    packed-switch p0, :pswitch_data_0

    .line 1209
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Availability;->BUSY:Lcom/google/calendar/v2/client/service/api/events/Availability;

    :goto_0
    return-object v0

    .line 1207
    :pswitch_0
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Availability;->AVAILABLE:Lcom/google/calendar/v2/client/service/api/events/Availability;

    goto :goto_0

    .line 1205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToV2Attendee(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel$Attendee;)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1244
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 1245
    invoke-static {v1}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    move-result-object v0

    .line 1249
    iget-object v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1250
    iget-object v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1251
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/android/calendar/event/data/EventEditManager;->getResponseFromStatus(I)Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    move-result-object v3

    .line 1259
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    move v5, v2

    .line 1257
    invoke-static/range {v0 .. v7}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->namedFromInternal(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;ZLcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;IZZ)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    return-object v0
.end method

.method private static convertToVisbilityV2(I)Lcom/google/calendar/v2/client/service/api/events/Visibility;
    .locals 1

    .prologue
    .line 1228
    sparse-switch p0, :sswitch_data_0

    .line 1238
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    :goto_0
    return-object v0

    .line 1230
    :sswitch_0
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PUBLIC:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    goto :goto_0

    .line 1233
    :sswitch_1
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PRIVATE:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    goto :goto_0

    .line 1235
    :sswitch_2
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->SECRET:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    goto :goto_0

    .line 1228
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method private static createImmutableEvent(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;Lcom/android/calendar/event/CalendarEventModel;Lcom/google/calendar/v2/client/service/api/events/Attendee;)Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;
    .locals 5

    .prologue
    .line 853
    new-instance v1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    invoke-direct {v1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;-><init>()V

    .line 854
    invoke-virtual {v1, p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setCalendar(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 857
    invoke-static {p1}, Lcom/android/calendar/event/data/EventEditManager;->getEventId(Lcom/android/calendar/event/CalendarEventModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setEventId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 858
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setTitle(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 859
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setDescription(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 860
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setLocation(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 863
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->isEventColorInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->getEventColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->getCalendarColor()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 864
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->getEventColor()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setLabelColor(Lcom/google/calendar/v2/client/service/api/common/Color;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 866
    :cond_0
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setIsAllDay(Z)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 867
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    invoke-static {v0}, Lcom/android/calendar/event/data/EventEditManager;->convertToVisbilityV2(I)Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setVisibility(Lcom/google/calendar/v2/client/service/api/events/Visibility;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 868
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAvailability:I

    invoke-static {v0}, Lcom/android/calendar/event/data/EventEditManager;->convertToAvailabilityV2(I)Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setAvailability(Lcom/google/calendar/v2/client/service/api/events/Availability;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 870
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v0

    .line 875
    iget-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    const-string v3, "UTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 876
    invoke-virtual {v0}, Lcom/android/calendar/time/DateTimeService;->calendarTimeZone()Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v0

    .line 875
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setStartTimeZone(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 877
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->getStartTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setEndTimeZone(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 881
    new-instance v0, Lcom/android/calendar/time/DateTimeImpl;

    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iget-object v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/calendar/time/TimeZoneImpl;->getTimeZone(Ljava/lang/String;)Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setStartTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 883
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    if-nez v0, :cond_1

    .line 886
    new-instance v0, Lcom/android/calendar/time/DateTimeImpl;

    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iget-object v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/calendar/time/TimeZoneImpl;->getTimeZone(Ljava/lang/String;)Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setEndTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 890
    :cond_1
    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    .line 891
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mNumOfAttendees:I

    if-lez v0, :cond_5

    .line 892
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 893
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 894
    invoke-static {p1, v0}, Lcom/android/calendar/event/data/EventEditManager;->convertToV2Attendee(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel$Attendee;)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 876
    :cond_2
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/calendar/time/TimeZoneImpl;->getTimeZone(Ljava/lang/String;)Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v0

    goto :goto_0

    .line 897
    :cond_3
    if-nez p2, :cond_c

    .line 899
    invoke-static {p1}, Lcom/android/calendar/event/AttendeeCollection;->createMyselfAsAttendee(Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/event/CalendarEventModel$Attendee;

    move-result-object v0

    .line 900
    if-eqz v0, :cond_4

    .line 901
    invoke-static {p1, v0}, Lcom/android/calendar/event/data/EventEditManager;->convertToV2Attendee(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel$Attendee;)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_4
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setImmutableAttendees(Ljava/util/List;Z)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 914
    :cond_5
    if-eqz v2, :cond_7

    .line 915
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/android/calendar/event/EventExtras;->getTitleAnnotations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 917
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setTitleAnnotations(Ljava/util/List;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 919
    :cond_6
    invoke-interface {v2}, Lcom/android/calendar/event/EventExtras;->getModelAttachments()Ljava/util/List;

    move-result-object v0

    .line 920
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 921
    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setImmutableAttachments(Ljava/util/List;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 925
    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/android/calendar/event/EventExtras;->hasSmartMail()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 926
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setHasSmartMail(Z)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 929
    :cond_8
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanInviteOthers:Z

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setGuestsCanInviteOthers(Z)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 930
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanModify:Z

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setGuestsCanModify(Z)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 932
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;

    move-result-object v0

    .line 933
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->hasHangout()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 934
    new-instance v2, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getHangoutLink()Ljava/lang/String;

    move-result-object v3

    .line 935
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getHangoutName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getConferenceType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-virtual {v1, v2}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setHangout(Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 940
    :goto_3
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    invoke-static {p1, v0}, Lcom/android/calendar/event/data/EventEditManager;->createOrganizerKey(Lcom/android/calendar/event/CalendarEventModel;Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setOrganizer(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 942
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    if-eqz v0, :cond_9

    .line 943
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 944
    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderEntriesToReminders(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 943
    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setImmutableReminders(Ljava/util/List;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 947
    :cond_9
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    if-eqz v0, :cond_a

    .line 948
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/calendar/Utils;->convertToRecurrenceData(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setRecurrenceData(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 951
    :cond_a
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-eqz v0, :cond_b

    .line 952
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    invoke-interface {v0}, Lcom/android/calendar/event/EventExtras;->getEventLocations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setImmutableStructuredLocation(Ljava/util/List;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 954
    :cond_b
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->build()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v0

    return-object v0

    .line 908
    :cond_c
    invoke-static {p2}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarUtil;->isIndividual(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 909
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 937
    :cond_d
    sget-object v0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->NO_HANGOUT:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setHangout(Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    goto :goto_3
.end method

.method private static createOrganizerKey(Lcom/android/calendar/event/CalendarEventModel;Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 2

    .prologue
    .line 959
    instance-of v0, p1, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerCanModify:Z

    if-eqz v0, :cond_0

    .line 960
    check-cast p1, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;

    .line 962
    invoke-virtual {p1}, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {p1}, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->getCalendarId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromPlatformId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;

    move-result-object v0

    .line 967
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    move-result-object v0

    goto :goto_0
.end method

.method private extractAttendees()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 828
    if-nez v0, :cond_0

    .line 829
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 830
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 831
    const-string v0, "[ ,;]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 834
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->convertToAttendees([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private getAttendeeEmail(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1272
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    .line 1273
    instance-of v1, v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v1, :cond_0

    .line 1274
    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 1276
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAttendeesExcludingSelf(Lcom/google/calendar/v2/client/service/api/events/Event;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/api/events/Event;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1183
    if-nez p1, :cond_0

    .line 1184
    const/4 v0, 0x0

    .line 1187
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/data/EventEditManager;->ATTENDEE_IS_NOT_SELF:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method private static getEventId(Lcom/android/calendar/event/CalendarEventModel;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 975
    iget-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "unsynced"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getResponseFromStatus(I)Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;
    .locals 5

    .prologue
    .line 1295
    packed-switch p0, :pswitch_data_0

    .line 1307
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager;->TAG:Ljava/lang/String;

    const-string v1, "Unknown Attendee Status %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1308
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->NEEDS_ACTION:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    :goto_0
    return-object v0

    .line 1297
    :pswitch_0
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->ACCEPTED:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    goto :goto_0

    .line 1299
    :pswitch_1
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->DECLINED:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    goto :goto_0

    .line 1301
    :pswitch_2
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->TENTATIVE:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    goto :goto_0

    .line 1304
    :pswitch_3
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->NEEDS_ACTION:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    goto :goto_0

    .line 1295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static getStatusFromResponse(Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;)I
    .locals 2

    .prologue
    .line 1312
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Attendee$Response:[I

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1322
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1314
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1316
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1318
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 1320
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasGuests(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1450
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableAttendees()Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1454
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getAttendees()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getRooms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private informSyncOffNotificationManager()V
    .locals 2

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1476
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getOriginalEvent()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1480
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    .line 1481
    instance-of v1, v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-eqz v1, :cond_0

    .line 1482
    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 1483
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 1484
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/SyncOffNotificationsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->onEventCreated(Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method private isEmptyNewEvent()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1501
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v1, :cond_1

    .line 1515
    :cond_0
    :goto_0
    return v0

    .line 1507
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v1, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1511
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method private isNewOrUnsyncedEvent()Z
    .locals 2

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getEventId()Ljava/lang/String;

    move-result-object v0

    .line 1192
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unsynced"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadEvent(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/event/data/EventEditManager;
    .locals 3

    .prologue
    .line 434
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager;

    const/16 v1, 0x3830

    invoke-direct {v0, p0, p1, v1}, Lcom/android/calendar/event/data/EventEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 435
    invoke-virtual {v0, p2}, Lcom/android/calendar/event/data/EventEditManager;->setInitialModel(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 436
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/event/data/EventEditManager;->mLoadersToStart:Ljava/util/Set;

    .line 437
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/data/EventEditLogMetrics;->isCalendarEventReferenceLogged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logCalendarEventReference()V

    .line 440
    :cond_0
    return-object v0
.end method

.method public static loadEvent(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/timely/TimelineEvent;)Lcom/android/calendar/event/data/EventEditManager;
    .locals 3

    .prologue
    .line 423
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager;

    const/16 v1, 0x2a77

    invoke-direct {v0, p0, p1, v1}, Lcom/android/calendar/event/data/EventEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 424
    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/android/calendar/timely/TimelineEvent;->getInfoUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/data/EventEditManager;->load(ILandroid/net/Uri;)V

    .line 425
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/event/data/EventEditManager;->mLoadersToStart:Ljava/util/Set;

    .line 426
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/data/EventEditLogMetrics;->isCalendarEventReferenceLogged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logCalendarEventReference()V

    .line 429
    :cond_0
    return-object v0
.end method

.method private logAdditionalSaveMetrics()V
    .locals 3

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v1, "createEditSource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1490
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v2, "createEditSource"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logSource(Ljava/lang/String;)V

    .line 1492
    :cond_0
    return-void
.end method

.method public static newEvent(Landroid/app/Activity;Landroid/app/LoaderManager;)Lcom/android/calendar/event/data/EventEditManager;
    .locals 3

    .prologue
    .line 444
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager;

    const/16 v1, 0x3830

    invoke-direct {v0, p0, p1, v1}, Lcom/android/calendar/event/data/EventEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 445
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/event/data/EventEditManager;->mLoadersToStart:Ljava/util/Set;

    .line 446
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/data/EventEditLogMetrics;->isCalendarEventReferenceLogged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logCalendarEventReference()V

    .line 449
    :cond_0
    return-object v0
.end method

.method private processIntent(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 773
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 774
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v0

    .line 775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/calendar/event/EditHelper;->constructDefaultStartTime(J)J

    move-result-wide v2

    .line 776
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v4, "title"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 777
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    iget-object v4, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v4, "eventLocation"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 780
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableLocation()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    iget-object v4, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v5, "eventLocation"

    .line 781
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 780
    invoke-interface {v1, v4}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 783
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v4, "endTime"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 784
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    iget-object v4, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v5, "endTime"

    .line 785
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 784
    invoke-virtual {v0, v4, v5}, Lcom/android/calendar/time/DateTimeService;->dateTimeForMillis(J)Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 787
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v4, "beginTime"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 788
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    iget-object v4, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v5, "beginTime"

    .line 789
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 788
    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/DateTimeService;->dateTimeForMillis(J)Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 791
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v1, "allDay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 792
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v2, "allDay"

    .line 793
    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 792
    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 795
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 796
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableDescription()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v2, "description"

    .line 797
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 796
    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 799
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v1, "rrule"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 800
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v2, "rrule"

    .line 801
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 800
    invoke-static {v1}, Lcom/android/calendar/Utils;->convertToRecurrenceData(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->set(Ljava/lang/Object;)Z

    .line 803
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v1, "availability"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 804
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableAvailability()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v2, "availability"

    .line 805
    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 804
    invoke-static {v1}, Lcom/android/calendar/event/data/EventEditManager;->convertToAvailabilityV2(I)Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 808
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v1, "accessLevel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 809
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableVisibility()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v2, "accessLevel"

    .line 810
    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 809
    invoke-static {v1}, Lcom/android/calendar/event/data/EventEditManager;->convertToVisbilityV2(I)Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 813
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 814
    invoke-direct {p0}, Lcom/android/calendar/event/data/EventEditManager;->extractAttendees()Ljava/util/Set;

    move-result-object v0

    .line 815
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 816
    invoke-interface {p1, v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->invite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V

    goto :goto_0

    .line 820
    :cond_9
    return-void
.end method

.method public static restoreEvent(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/data/EventEditManager;)Lcom/android/calendar/event/data/EventEditManager;
    .locals 2

    .prologue
    .line 454
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/calendar/event/data/EventEditManager;->setRestored(Z)V

    .line 455
    const/16 v0, 0x3830

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/calendar/event/data/EventEditManager;->initialize(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 456
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p2, Lcom/android/calendar/event/data/EventEditManager;->mLoadersToStart:Ljava/util/Set;

    .line 457
    return-object p2
.end method

.method private setHideSegments(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    iput-boolean v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mHideSegments:Z

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getStartTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iput-boolean v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mHideSegments:Z

    goto :goto_0
.end method


# virtual methods
.method public buildCalendarEventModelFromEvent()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1003
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    if-nez v0, :cond_0

    .line 1139
    :goto_0
    return v5

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->from(Lcom/google/calendar/v2/client/service/api/events/EventEdit;)Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;

    move-result-object v6

    .line 1010
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->eventDiffIsValid()Z

    move-result v0

    if-nez v0, :cond_11

    move v3, v4

    .line 1011
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v7

    .line 1012
    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;

    .line 1013
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 1015
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v2, :cond_12

    .line 1017
    new-instance v2, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v2}, Lcom/android/calendar/event/CalendarEventModel;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    .line 1018
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iput-boolean v5, v2, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    .line 1019
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iput-boolean v4, v2, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    .line 1021
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getOwnerAccount()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 1029
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getCalendarId()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    .line 1031
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/CalendarEventModel;->setCalendarColor(I)V

    .line 1032
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 1033
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    .line 1034
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getOwnerAccount()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 1035
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isOrganizerCopy()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    .line 1037
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isAllDay()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 1040
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getStartTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 1042
    if-nez v3, :cond_2

    invoke-virtual {v6}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasTitleChanges()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1043
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 1045
    :cond_3
    if-nez v3, :cond_4

    invoke-virtual {v6}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasDescriptionChanges()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1046
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 1049
    :cond_5
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    .line 1053
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getStartTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTimeZoneRetainFields(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    .line 1054
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    .line 1056
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getEndTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v4

    :goto_3
    iput-boolean v0, v2, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    .line 1059
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    if-eqz v0, :cond_15

    .line 1060
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    if-eqz v0, :cond_14

    invoke-static {v4}, Lcom/google/calendar/v2/client/service/api/time/Period;->days(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    .line 1064
    :goto_4
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v8

    invoke-interface {v8, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 1065
    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getEndTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTimeZoneRetainFields(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    .line 1072
    :goto_5
    if-nez v3, :cond_6

    invoke-virtual {v6}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasLocationChanges()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1073
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getLocation()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 1075
    :cond_7
    if-nez v3, :cond_8

    invoke-virtual {v6}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasStructuredLocationChanges()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1076
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mHelper:Lcom/android/calendar/event/EditHelper;

    iget-object v8, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v8, v8, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    invoke-virtual {v2, v8, v7}, Lcom/android/calendar/event/EditHelper;->applyLocationExtrasFromEventV2(Lcom/android/calendar/event/EventExtras;Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/android/calendar/event/EventExtras;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    .line 1078
    :cond_9
    if-nez v3, :cond_a

    invoke-virtual {v6}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasTitleAnnotationsChanges()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1079
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mHelper:Lcom/android/calendar/event/EditHelper;

    iget-object v8, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v8, v8, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    invoke-virtual {v2, v8, v7}, Lcom/android/calendar/event/EditHelper;->applyTitleAnnotationExtrasFromEvent(Lcom/android/calendar/event/EventExtras;Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/android/calendar/event/EventExtras;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    .line 1081
    :cond_b
    if-nez v3, :cond_c

    invoke-virtual {v6}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasAvailabilityChanges()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1082
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getAvailability()Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/event/data/EventEditManager;->convertFromAvailabilityV2(Lcom/google/calendar/v2/client/service/api/events/Availability;)I

    move-result v2

    iput v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mAvailability:I

    .line 1084
    :cond_d
    if-nez v3, :cond_e

    invoke-virtual {v6}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasVisibilityChanges()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1085
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getVisibility()Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/event/data/EventEditManager;->convertFromVisibilityV2(Lcom/google/calendar/v2/client/service/api/events/Visibility;)I

    move-result v2

    iput v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    .line 1087
    :cond_f
    if-nez v3, :cond_10

    invoke-virtual {v6}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasRemindersChanges()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1088
    :cond_10
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1089
    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getReminders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 1090
    iget-object v8, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v8, v8, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderToReminderEntry(Lcom/google/calendar/v2/client/service/api/common/Reminder;)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    move v3, v5

    .line 1010
    goto/16 :goto_1

    .line 1023
    :cond_12
    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getOrganizer()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v2

    instance-of v2, v2, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v2, :cond_1

    .line 1025
    iget-object v8, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getOrganizer()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v2

    check-cast v2, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    goto/16 :goto_2

    :cond_13
    move v0, v5

    .line 1056
    goto/16 :goto_3

    .line 1060
    :cond_14
    invoke-static {v4}, Lcom/google/calendar/v2/client/service/api/time/Period;->hours(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    goto/16 :goto_4

    .line 1069
    :cond_15
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getEndTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getEndTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTimeZoneRetainFields(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    .line 1070
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    goto/16 :goto_5

    .line 1092
    :cond_16
    if-eqz v3, :cond_17

    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 1094
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mDefaultNotificationsMap:Ljava/util/Map;

    .line 1095
    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;

    .line 1096
    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isAllDay()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1097
    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    .line 1099
    :goto_7
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v4

    :goto_8
    iput-boolean v0, v2, Lcom/android/calendar/event/CalendarEventModel;->mClearDefaultReminders:Z

    .line 1102
    :cond_17
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    move v0, v4

    :goto_9
    iput-boolean v0, v2, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    .line 1104
    :cond_18
    if-nez v3, :cond_19

    invoke-virtual {v6}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasGuestsCanInviteOthersChanges()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1105
    :cond_19
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->guestsCanInviteOthers()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanInviteOthers:Z

    .line 1107
    :cond_1a
    if-nez v3, :cond_1b

    invoke-virtual {v6}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasGuestsCanModifyChanges()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1108
    :cond_1b
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->guestsCanModify()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanModify:Z

    .line 1114
    :cond_1c
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableHangout()Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;->hasHangout()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    .line 1116
    if-nez v3, :cond_1d

    invoke-virtual {v6}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasAttendeesChanges()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1117
    :cond_1d
    invoke-direct {p0, v7}, Lcom/android/calendar/event/data/EventEditManager;->applyAttendeeChanges(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V

    .line 1121
    :cond_1e
    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getLabelColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v2

    .line 1122
    if-eqz v2, :cond_29

    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mColorCache:Lcom/android/calendar/ColorCache;

    new-instance v8, Landroid/accounts/Account;

    .line 1123
    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v9, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v0, v8, v2}, Lcom/android/calendar/ColorCache;->getColorKey(Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;)Ljava/lang/Integer;

    move-result-object v0

    .line 1124
    :goto_a
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_b
    iput v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mEventColorKey:I

    .line 1125
    if-nez v3, :cond_1f

    invoke-virtual {v6}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasLabelColorChanges()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1126
    :cond_1f
    if-eqz v2, :cond_2b

    .line 1127
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v2}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CalendarEventModel;->setEventColor(I)V

    .line 1132
    :cond_20
    :goto_c
    if-nez v3, :cond_21

    invoke-virtual {v6}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasRecurrenceChanges()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1133
    :cond_21
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->convertToRrule(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1134
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-eqz v1, :cond_22

    move v5, v4

    :cond_22
    iput-boolean v5, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    .line 1136
    :cond_23
    if-nez v3, :cond_24

    invoke-virtual {v6}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasAttachmentChanges()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1137
    :cond_24
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mHelper:Lcom/android/calendar/event/EditHelper;

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    invoke-virtual {v1, v2, v7}, Lcom/android/calendar/event/EditHelper;->applyAttachmentExtrasFromEvent(Lcom/android/calendar/event/EventExtras;Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/android/calendar/event/EventExtras;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    :cond_25
    move v5, v4

    .line 1139
    goto/16 :goto_0

    .line 1098
    :cond_26
    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    goto/16 :goto_7

    :cond_27
    move v0, v5

    .line 1099
    goto/16 :goto_8

    :cond_28
    move v0, v5

    .line 1102
    goto/16 :goto_9

    .line 1123
    :cond_29
    const/4 v0, 0x0

    goto :goto_a

    .line 1124
    :cond_2a
    const/4 v0, -0x1

    goto :goto_b

    .line 1129
    :cond_2b
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel;->clearEventColor()V

    goto :goto_c
.end method

.method public changeCalendar(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 2

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    .line 1520
    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->setCalendar(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    .line 1521
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->changeOrganizer(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V

    .line 1523
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mInputAspects:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mutableDefaultDuration()Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    move-result-object v0

    check-cast p1, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;

    .line 1524
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getDefaultEventDuration()I

    move-result v1

    .line 1523
    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;->set(I)V

    .line 1525
    return-void
.end method

.method public convertEventToReminder(Landroid/text/SpannedString;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 569
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 570
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mCallbacks:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 571
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AbstractEditManager$Callback;

    .line 574
    invoke-interface {v0, p1, p2, p3}, Lcom/android/calendar/event/data/AbstractEditManager$Callback;->onConvertEventToReminder(Landroid/text/SpannedString;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 576
    :cond_0
    return-void
.end method

.method protected createNewMutableEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
    .locals 3

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getDefaultCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    .line 754
    new-instance v1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;-><init>(Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    .line 756
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setOrganizer(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    .line 757
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->build()Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    move-result-object v0

    .line 758
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->processMutableEvent(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V

    .line 759
    return-object v0
.end method

.method protected createOriginalEvent()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method protected eventDiffIsValid()Z
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getOriginalEvent()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public eventIsNewOrHasChanged()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1327
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    if-nez v2, :cond_1

    .line 1334
    :cond_0
    :goto_0
    return v0

    .line 1330
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->isNewEvent()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1331
    goto :goto_0

    .line 1333
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    invoke-static {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->from(Lcom/google/calendar/v2/client/service/api/events/EventEdit;)Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;

    move-result-object v2

    .line 1334
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasRecurrenceChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1335
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasLabelColorChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1336
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasStructuredLocationChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1337
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasGuestsCanModifyChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1338
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasAttendeesChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1339
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasBackgroundImageUrlChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1340
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasBackgroundVideoUrlChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1341
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasDescriptionChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1342
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasEndTimeChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1343
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasGuestsCanInviteOthersChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1344
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasLocationChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1345
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasAvailabilityChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1346
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasVisibilityChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1347
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasTitleAnnotationsChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1348
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasRemindersChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1349
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasStartTimeChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1350
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasTitleChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1351
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasHangoutChanges()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1352
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasAttachmentChanges()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method protected getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    if-nez v0, :cond_0

    .line 1535
    const/4 v0, 0x0

    .line 1537
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    goto :goto_0
.end method

.method public getEventColorList()Ljava/util/List;
    .locals 3
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
    .line 407
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 408
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 409
    new-instance v1, Landroid/accounts/Account;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mColorCache:Lcom/android/calendar/ColorCache;

    invoke-virtual {v0, v1}, Lcom/android/calendar/ColorCache;->getColorList(Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputAspect(Lcom/android/calendar/editor/AspectKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AspectType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/calendar/editor/AspectKey",
            "<TAspectType;>;)TAspectType;"
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mInputAspects:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;-><init>(Lcom/android/calendar/event/data/EventEditManager;)V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mInputAspects:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

    .line 557
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mInputAspects:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mutableDefaultDuration()Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    move-result-object v1

    .line 558
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getDefaultEventDuration()I

    move-result v0

    .line 557
    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;->set(I)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mInputAspects:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

    invoke-virtual {v0, p1}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->implementsAspect(Lcom/android/calendar/editor/AspectKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mInputAspects:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

    invoke-virtual {p1, v0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 563
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mLogMetrics:Lcom/android/calendar/event/data/EventEditLogMetrics;

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;

    invoke-direct {v0}, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mLogMetrics:Lcom/android/calendar/event/data/EventEditLogMetrics;

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mLogMetrics:Lcom/android/calendar/event/data/EventEditLogMetrics;

    return-object v0
.end method

.method public getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    return-object v0
.end method

.method getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;
    .locals 1

    .prologue
    .line 1530
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    return-object v0
.end method

.method protected getToastString(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1428
    if-eqz p1, :cond_3

    .line 1429
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 1430
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->hasGuests(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1431
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isNewEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->creating_event_with_guest:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1446
    :goto_0
    return-object v0

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->saving_event_with_guest:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1437
    :cond_1
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isNewEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1438
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->creating_event:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1440
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->saving_event:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1443
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/event/data/EventEditManager;->isEmptyNewEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1444
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->empty_event:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1446
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideSegments()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mHideSegments:Z

    return v0
.end method

.method public initialize(Landroid/app/Activity;Landroid/app/LoaderManager;I)V
    .locals 2

    .prologue
    .line 504
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/event/data/AbstractEditManager;->initialize(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 505
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->TAG:Ljava/lang/String;

    .line 506
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    .line 507
    if-eqz v0, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mModificiationListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->setModificationSelectedListener(Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;)Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    .line 510
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 531
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v0

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v2

    .line 535
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 536
    goto :goto_0

    .line 538
    :cond_2
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 539
    goto :goto_0

    .line 541
    :cond_3
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    .line 542
    goto :goto_0

    .line 544
    :cond_4
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getAttachments()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getAttachments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    .line 545
    goto :goto_0

    .line 547
    :cond_5
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getAttendees()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getAttendees()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 548
    goto :goto_0
.end method

.method public isEventStartAfter(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z
    .locals 1

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isAfter(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v0

    return v0
.end method

.method public isNewEvent()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v0, :cond_0

    .line 520
    const/4 v0, 0x1

    .line 526
    :goto_0
    return v0

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 523
    if-nez v0, :cond_1

    .line 524
    const/4 v0, 0x0

    goto :goto_0

    .line 526
    :cond_1
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isNewEvent()Z

    move-result v0

    goto :goto_0
.end method

.method protected onAllDataLoaded()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 670
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logEventLoaded()V

    .line 672
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getDefaultCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 673
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager;->TAG:Ljava/lang/String;

    const-string v1, "No calendars selected and/or synchronized"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 674
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->edit_error_no_calendars:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/event/data/EventEditManager;->newMissingDataStatus(Ljava/lang/String;)Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->dispatchOnCompletion(Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;)V

    .line 750
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v0, :cond_1

    .line 681
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->createNewMutableEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->newBuilder(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;

    move-result-object v0

    .line 682
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->createOriginalEvent()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->setOriginalEvent(Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;)Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->build()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    .line 683
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->setHideSegments(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V

    .line 684
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager;->SUCCESS:Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->dispatchOnCompletion(Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;)V

    goto :goto_0

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mCalendarMap:Ljava/util/Map;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v3, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    .line 689
    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 688
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 691
    if-nez v0, :cond_2

    .line 692
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager;->TAG:Ljava/lang/String;

    const-string v1, "Calendar not found: %d"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v3, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 693
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->edit_error_calendar_not_found:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/event/data/EventEditManager;->newMissingDataStatus(Ljava/lang/String;)Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->dispatchOnCompletion(Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;)V

    goto :goto_0

    .line 701
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mNumOfAttendees:I

    if-lez v1, :cond_6

    .line 707
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    .line 708
    invoke-static {v1, v7}, Lcom/android/calendar/event/AttendeeCollection;->createMyselfAsAttendee(Lcom/android/calendar/event/CalendarEventModel;Z)Lcom/android/calendar/event/CalendarEventModel$Attendee;

    move-result-object v1

    .line 709
    if-eqz v1, :cond_6

    .line 710
    iget-object v3, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v3, v1}, Lcom/android/calendar/event/data/EventEditManager;->convertToV2Attendee(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel$Attendee;)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v1

    .line 714
    :goto_1
    iget-object v3, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    .line 715
    invoke-static {v0, v3, v1}, Lcom/android/calendar/event/data/EventEditManager;->createImmutableEvent(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;Lcom/android/calendar/event/CalendarEventModel;Lcom/google/calendar/v2/client/service/api/events/Attendee;)Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->builderFrom(Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/calendar/event/data/EventEditManager;->mHelper:Lcom/android/calendar/event/EditHelper;

    iget-object v4, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    .line 716
    invoke-virtual {v3, v4}, Lcom/android/calendar/event/EditHelper;->getAttachmentListFromExtras(Lcom/android/calendar/event/EventExtras;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setAttachments(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->build()Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    move-result-object v3

    .line 717
    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getReminders()Ljava/util/List;

    move-result-object v4

    .line 721
    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v1, :cond_3

    .line 722
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mCalendarNotificationsMap:Ljava/util/Map;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;

    .line 723
    if-eqz v1, :cond_3

    .line 724
    iget-object v5, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v5, v5, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    invoke-virtual {v1, v4, v5}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->replace(Ljava/util/Collection;Z)V

    .line 731
    :cond_3
    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableHangout()Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;

    move-result-object v1

    iget-object v4, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v4, v4, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    invoke-interface {v1, v4}, Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;->setHangout(Z)V

    .line 733
    iget-boolean v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mRestored:Z

    if-nez v1, :cond_4

    .line 734
    invoke-direct {p0, v3}, Lcom/android/calendar/event/data/EventEditManager;->processIntent(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V

    .line 738
    :cond_4
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v1, :cond_5

    .line 739
    invoke-static {v3}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->newBuilder(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->build()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    .line 740
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->setHideSegments(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V

    .line 741
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager;->SUCCESS:Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->dispatchOnCompletion(Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;)V

    goto/16 :goto_0

    .line 746
    :cond_5
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/data/EventEditManager;->createImmutableEvent(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;Lcom/android/calendar/event/CalendarEventModel;Lcom/google/calendar/v2/client/service/api/events/Attendee;)Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v0

    .line 747
    invoke-static {v3}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->newBuilder(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->setOriginalEvent(Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;)Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->build()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    .line 748
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->setHideSegments(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V

    .line 749
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager;->SUCCESS:Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->dispatchOnCompletion(Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;)V

    goto/16 :goto_0

    :cond_6
    move-object v1, v2

    goto/16 :goto_1
.end method

.method protected onAttendeesLoaded(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p1}, Lcom/android/calendar/event/EditHelper;->setModelFromAttendeeCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V

    .line 629
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p1}, Lcom/android/calendar/event/EditHelper;->setModelFromAttendeeCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V

    .line 630
    return-void
.end method

.method protected onCalendarsLoaded(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 619
    invoke-super {p0, p1}, Lcom/android/calendar/event/data/AbstractEditManager;->onCalendarsLoaded(Landroid/database/Cursor;)V

    .line 620
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mLoaderManager:Landroid/app/LoaderManager;

    const/16 v1, 0x800

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mNotificationsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 622
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mLoaderManager:Landroid/app/LoaderManager;

    const/16 v1, 0x2000

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mFindTimeSupportCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 624
    return-void
.end method

.method protected onColorsLoaded(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mColorCache:Lcom/android/calendar/ColorCache;

    invoke-virtual {v0, p1}, Lcom/android/calendar/ColorCache;->populate(Landroid/database/Cursor;)V

    .line 643
    return-void
.end method

.method protected onDefaultEventDurationLoaded(Landroid/database/Cursor;)V
    .locals 5

    .prologue
    .line 654
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 655
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mCalendarMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 656
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/calendar/event/data/EventEditManager;->mHelper:Lcom/android/calendar/event/EditHelper;

    .line 657
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-virtual {v4, v0, p1}, Lcom/android/calendar/event/EditHelper;->setCalendarFromDefaultEventDuration(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;Landroid/database/Cursor;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    .line 656
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 661
    :cond_0
    iput-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mCalendarMap:Ljava/util/Map;

    .line 662
    return-void
.end method

.method public onEventDeleted(I)V
    .locals 3

    .prologue
    .line 1496
    invoke-super {p0, p1}, Lcom/android/calendar/event/data/AbstractEditManager;->onEventDeleted(I)V

    .line 1497
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logDelete(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/events/EventEdit;)V

    .line 1498
    return-void
.end method

.method protected onEventLoaded(Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/16 v6, 0x200

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 580
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->edit_error_event_not_found:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/event/data/EventEditManager;->newMissingDataStatus(Ljava/lang/String;)Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->dispatchOnCompletion(Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;)V

    .line 615
    :goto_0
    return-void

    .line 586
    :cond_0
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0}, Lcom/android/calendar/event/CalendarEventModel;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    .line 587
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0}, Lcom/android/calendar/event/CalendarEventModel;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    .line 589
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p1}, Lcom/android/calendar/event/EditHelper;->setModelFromEventCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z

    .line 590
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p1}, Lcom/android/calendar/event/EditHelper;->setModelFromEventCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z

    .line 595
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 596
    const-string v0, "modelId"

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-virtual {p0, v4, v0, v2, v3}, Lcom/android/calendar/event/data/EventEditManager;->load(ILjava/lang/String;J)V

    .line 602
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    if-eqz v0, :cond_2

    .line 603
    const-string v0, "modelId"

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-virtual {p0, v5, v0, v2, v3}, Lcom/android/calendar/event/data/EventEditManager;->load(ILjava/lang/String;J)V

    .line 608
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mHelper:Lcom/android/calendar/event/EditHelper;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditHelper;->hasExtrasLoader()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 609
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mExtrasCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 613
    :goto_3
    const/16 v0, 0x40

    const-string v1, "modelId"

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/calendar/event/data/EventEditManager;->load(ILjava/lang/String;J)V

    .line 614
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->load(I)V

    goto :goto_0

    .line 598
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/calendar/event/data/EventEditManager;->onQueryComplete(I)V

    goto :goto_1

    .line 605
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/calendar/event/data/EventEditManager;->onQueryComplete(I)V

    goto :goto_2

    .line 611
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/calendar/event/data/EventEditManager;->onQueryComplete(I)V

    goto :goto_3
.end method

.method protected onEventSaved(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 1459
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/data/AbstractEditManager;->onEventSaved(Ljava/lang/String;Z)V

    .line 1460
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setDefaultCalendarId(J)V

    .line 1461
    invoke-direct {p0}, Lcom/android/calendar/event/data/EventEditManager;->informSyncOffNotificationManager()V

    .line 1462
    invoke-direct {p0}, Lcom/android/calendar/event/data/EventEditManager;->logAdditionalSaveMetrics()V

    .line 1463
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logSave(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/events/EventEdit;Ljava/lang/String;Z)V

    .line 1464
    return-void
.end method

.method protected onExtendedPropertiesLoaded(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p1}, Lcom/android/calendar/event/EditHelper;->setModelFromExtendedProperties(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V

    .line 648
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p1}, Lcom/android/calendar/event/EditHelper;->setModelFromExtendedProperties(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V

    .line 649
    return-void
.end method

.method protected onNotificationsLoaded(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p1}, Lcom/android/calendar/event/EditHelper;->setModelFromRemindersCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V

    .line 635
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p1}, Lcom/android/calendar/event/EditHelper;->setModelFromRemindersCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V

    .line 636
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 637
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->buildCalendarEventModelFromEvent()Z

    .line 982
    invoke-super {p0, p1}, Lcom/android/calendar/event/data/AbstractEditManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 983
    return-void
.end method

.method protected processMutableEvent(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V
    .locals 5

    .prologue
    .line 764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/calendar/event/EditHelper;->constructDefaultStartTime(J)J

    move-result-wide v2

    .line 765
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v1

    .line 766
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStartTimeZone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/calendar/time/DateTimeService;->calendarTimeZone()Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 767
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableEndTimeZone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStartTimeZone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    invoke-interface {v4, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 768
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/time/DateTimeService;->dateTimeForMillis(J)Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 769
    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/EventEditManager;->processIntent(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V

    .line 770
    return-void
.end method

.method public removeAsHiddenSegment(Lcom/android/calendar/editor/EditSegment;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mHiddenSegments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public save()V
    .locals 4

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mEventEdit:Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    if-nez v0, :cond_0

    .line 1362
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->notifyAboutSaveInterruption()V

    .line 1381
    :goto_0
    return-void

    .line 1365
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->buildCalendarEventModelFromEvent()Z

    .line 1371
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 1375
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getEndTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getEndTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isAfter(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1376
    sget-object v1, Lcom/android/calendar/event/data/EventEditManager;->TAG:Ljava/lang/String;

    const-string v2, "Trying to save an event with an end time dated before its start time."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1380
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getOriginalEvent()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/data/EventEditManager;->saveInternal(Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V

    goto :goto_0
.end method

.method saveInternal(Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1385
    .line 1387
    if-eqz p1, :cond_7

    .line 1388
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v0

    if-eqz v0, :cond_0

    move v3, v1

    .line 1389
    :goto_0
    if-nez v3, :cond_1

    .line 1390
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;->getOriginalStart()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1392
    :goto_1
    invoke-interface {p2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1394
    :goto_2
    invoke-direct {p0}, Lcom/android/calendar/event/data/EventEditManager;->isNewOrUnsyncedEvent()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1400
    invoke-virtual {p0, v4}, Lcom/android/calendar/event/data/EventEditManager;->startAsyncSave(I)V

    .line 1412
    :goto_3
    return-void

    :cond_0
    move v3, v2

    .line 1388
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1390
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1392
    goto :goto_2

    .line 1404
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/event/data/EventEditManager;->isNewOrUnsyncedEvent()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v3, :cond_5

    .line 1405
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/calendar/event/data/EventEditManager;->startAsyncSave(I)V

    goto :goto_3

    .line 1410
    :cond_5
    invoke-interface {p2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeTime()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/data/EventEditManager;->showSelectModeDialog(I)V

    goto :goto_3

    :cond_6
    move v0, v5

    .line 1411
    goto :goto_4

    :cond_7
    move v0, v2

    move v3, v2

    goto :goto_1
.end method

.method public setAsHiddenSegment(Lcom/android/calendar/editor/EditSegment;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mHiddenSegments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 403
    invoke-super {p0, p1}, Lcom/android/calendar/event/data/AbstractEditManager;->setExtras(Landroid/os/Bundle;)V

    .line 404
    return-void
.end method

.method public setRestored(Z)V
    .locals 0

    .prologue
    .line 971
    iput-boolean p1, p0, Lcom/android/calendar/event/data/EventEditManager;->mRestored:Z

    .line 972
    return-void
.end method

.method showSelectModeDialog(I)V
    .locals 3

    .prologue
    .line 1421
    new-instance v0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    invoke-direct {v0}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;-><init>()V

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mModificiationListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->setModificationSelectedListener(Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;)Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    move-result-object v0

    .line 1422
    invoke-virtual {v0, p1}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->setMultipleModification(I)Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    .line 1423
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1424
    return-void
.end method

.method startAsyncSave(I)V
    .locals 2

    .prologue
    .line 1416
    new-instance v0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;-><init>(Lcom/android/calendar/event/data/AbstractEditManager;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1417
    return-void
.end method

.method protected supportAlertsOnly()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 469
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/data/AbstractEditManager;->writeToParcel(Landroid/os/Parcel;I)V

    .line 470
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager;->mLogMetrics:Lcom/android/calendar/event/data/EventEditLogMetrics;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 471
    return-void
.end method
