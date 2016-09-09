.class public Lcom/android/calendar/newapi/screen/GrooveEditScreenController;
.super Lcom/android/calendar/newapi/screen/EditScreenController;
.source "GrooveEditScreenController.java"

# interfaces
.implements Lcom/android/calendar/newapi/common/Loader$Callback;


# instance fields
.field private mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

.field protected mEventClient:Lcom/google/android/calendar/api/EventClient;

.field protected mEventModifications:Lcom/google/android/calendar/api/EventModifications;

.field protected mHabitClient:Lcom/google/android/calendar/api/HabitClient;

.field protected mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

.field public mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

.field private mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

.field private mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;-><init>()V

    .line 97
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitClient:Lcom/google/android/calendar/api/HabitClient;

    .line 99
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Events:Lcom/google/android/calendar/api/EventClient;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventClient:Lcom/google/android/calendar/api/EventClient;

    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/newapi/screen/GrooveEditScreenController;Lcom/android/calendar/newapi/common/BatchingPendingResult;)Lcom/android/calendar/newapi/common/BatchingPendingResult;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/newapi/screen/GrooveEditScreenController;)Z
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->hasReminderChanges()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/newapi/screen/GrooveEditScreenController;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->logAnalytics()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/newapi/screen/GrooveEditScreenController;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->notifyContentProvider()V

    return-void
.end method

.method private createSegments()Lcom/android/calendar/newapi/screen/SegmentViews;
    .locals 19

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    invoke-static {v1, v2, v3}, Lcom/android/calendar/newapi/common/ApiUtils;->showSimplifiedGrooveScreen(Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;)Z

    move-result v9

    .line 272
    if-eqz v9, :cond_4

    .line 273
    new-instance v4, Lcom/android/calendar/newapi/model/EventTitleModification;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-direct {v4, v1}, Lcom/android/calendar/newapi/model/EventTitleModification;-><init>(Lcom/google/android/calendar/api/EventModifications;)V

    .line 275
    :goto_0
    if-eqz v9, :cond_5

    .line 276
    new-instance v5, Lcom/android/calendar/newapi/model/EventColorModification;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-direct {v5, v1}, Lcom/android/calendar/newapi/model/EventColorModification;-><init>(Lcom/google/android/calendar/api/EventModifications;)V

    .line 278
    :goto_1
    if-eqz v9, :cond_6

    .line 279
    new-instance v6, Lcom/android/calendar/newapi/model/EventCalendarModification;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-direct {v6, v1}, Lcom/android/calendar/newapi/model/EventCalendarModification;-><init>(Lcom/google/android/calendar/api/EventModifications;)V

    .line 281
    :goto_2
    if-eqz v9, :cond_7

    .line 282
    new-instance v1, Lcom/android/calendar/newapi/model/EventVisibilityModification;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-direct {v1, v2}, Lcom/android/calendar/newapi/model/EventVisibilityModification;-><init>(Lcom/google/android/calendar/api/EventModifications;)V

    move-object/from16 v16, v1

    .line 285
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    .line 286
    new-instance v18, Lcom/android/calendar/newapi/screen/SegmentViews;

    invoke-direct/range {v18 .. v18}, Lcom/android/calendar/newapi/screen/SegmentViews;-><init>()V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->newView(Landroid/content/Context;)Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    move-result-object v3

    .line 289
    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->headerView:Landroid/view/View;

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "TitleEditSegmentController"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getColorCache()Lcom/google/android/calendar/api/ColorCache;

    move-result-object v8

    .line 291
    invoke-static/range {v1 .. v9}, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/title/TitleEditSegment;Lcom/android/calendar/newapi/model/TitleModification;Lcom/android/calendar/newapi/model/ColorModification;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/google/android/calendar/api/ColorCache;Z)Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;

    move-result-object v1

    .line 290
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    .line 305
    if-nez v9, :cond_0

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    sget-object v2, Lcom/android/calendar/event/data/LoadDetailsUtils;->PRIMARY_GOOGLE_CALENDAR_PREDICATE:Lcom/google/common/base/Predicate;

    .line 307
    invoke-virtual {v1, v2}, Lcom/android/calendar/newapi/model/CalendarStore;->getMatchingCalendars(Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v15

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->isNewHabit()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 309
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;

    move-result-object v12

    .line 310
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    const-string v11, "CalendarEditSegmentController"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    move-object v13, v6

    .line 312
    invoke-static/range {v10 .. v15}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Ljava/util/Map;)Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;

    move-result-object v1

    .line 311
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 321
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    if-eqz v1, :cond_1

    .line 322
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;

    move-result-object v1

    .line 323
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    const-string v2, "GrooveTimeEditSegmentController"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 325
    invoke-static {v10, v2, v1, v3, v4}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;Lcom/google/android/calendar/api/EventModifications;Ljava/util/TimeZone;)Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;

    move-result-object v1

    .line 324
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 332
    :cond_1
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->createDivider()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    if-nez v9, :cond_3

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/newapi/segment/contract/ContractUtils;->supportsContract(Lcom/google/android/calendar/api/HabitContract;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;

    move-result-object v1

    .line 337
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const-string v2, "ContractEditSegmentController"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 343
    invoke-interface {v3}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v3

    .line 339
    invoke-static {v10, v2, v1, v3}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;Lcom/google/android/calendar/api/HabitContractModifications;)Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;

    move-result-object v1

    .line 338
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 344
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->createDivider()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_2
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;

    move-result-object v12

    .line 349
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    const-string v11, "NotificationEditSegmentController"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

    .line 351
    invoke-static/range {v10 .. v15}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;Lcom/google/android/calendar/api/HabitModifications;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/android/calendar/newapi/model/NotificationStore;)Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;

    move-result-object v1

    .line 350
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 358
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->createDivider()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/color/ColorEditSegment;

    move-result-object v4

    .line 361
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v3, "ColorEditSegmentController"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getColorCache()Lcom/google/android/calendar/api/ColorCache;

    move-result-object v8

    move-object v2, v10

    .line 363
    invoke-static/range {v2 .. v8}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/color/ColorEditSegment;Lcom/android/calendar/newapi/model/ColorModification;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/google/android/calendar/api/ColorCache;)Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;

    move-result-object v1

    .line 362
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 371
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->createDivider()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;

    move-result-object v1

    .line 374
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    const-string v2, "VisibilityEditSegmentController"

    .line 376
    move-object/from16 v0, v16

    invoke-static {v10, v2, v1, v0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;Lcom/android/calendar/newapi/model/VisibilityModification;)Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;

    move-result-object v1

    .line 375
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 383
    :cond_3
    return-object v18

    .line 274
    :cond_4
    new-instance v4, Lcom/android/calendar/newapi/model/GrooveTitleModification;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-direct {v4, v1}, Lcom/android/calendar/newapi/model/GrooveTitleModification;-><init>(Lcom/google/android/calendar/api/HabitModifications;)V

    goto/16 :goto_0

    .line 277
    :cond_5
    new-instance v5, Lcom/android/calendar/newapi/model/GrooveColorModification;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-direct {v5, v1}, Lcom/android/calendar/newapi/model/GrooveColorModification;-><init>(Lcom/google/android/calendar/api/HabitModifications;)V

    goto/16 :goto_1

    .line 280
    :cond_6
    new-instance v6, Lcom/android/calendar/newapi/model/GrooveCalendarModification;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-direct {v6, v1}, Lcom/android/calendar/newapi/model/GrooveCalendarModification;-><init>(Lcom/google/android/calendar/api/HabitModifications;)V

    goto/16 :goto_2

    .line 283
    :cond_7
    new-instance v1, Lcom/android/calendar/newapi/model/GrooveVisibilityModification;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-direct {v1, v2}, Lcom/android/calendar/newapi/model/GrooveVisibilityModification;-><init>(Lcom/google/android/calendar/api/HabitModifications;)V

    move-object/from16 v16, v1

    goto/16 :goto_3
.end method

.method private ensureCalendarApiInitialization()V
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->isNewHabit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcom/google/android/calendar/api/ColorCache;->initialize()V

    .line 223
    :cond_0
    return-void
.end method

.method private hasReminderChanges()Z
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    if-nez v0, :cond_0

    .line 567
    const/4 v0, 0x0

    .line 569
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->isRemindersModified()Z

    move-result v0

    goto :goto_0
.end method

.method private hasStartTimeChanges()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 558
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/EventModifications;->getOriginal()Lcom/google/android/calendar/api/Event;

    move-result-object v1

    if-nez v1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/EventModifications;->getStartMillisSinceEpoch()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 562
    invoke-interface {v1}, Lcom/google/android/calendar/api/EventModifications;->getOriginal()Lcom/google/android/calendar/api/Event;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/calendar/api/Event;->getStartMillisSinceEpoch()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private logAnalytics()V
    .locals 3

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 507
    if-nez v1, :cond_0

    .line 535
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->hasStartTimeChanges()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getAnalyticsLogger()Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->timeModified()V

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    if-eqz v0, :cond_3

    .line 518
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->isRemindersModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getAnalyticsLogger()Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->notificationModified()V

    .line 522
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getAnalyticsLogger()Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v2}, Lcom/google/android/calendar/api/EventModifications;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->setIsTitleEmpty(Z)V

    .line 523
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->isSummaryModified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getAnalyticsLogger()Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->titleModified()V

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->isNewHabit()Z

    move-result v0

    if-nez v0, :cond_5

    .line 530
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    .line 534
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getAnalyticsLogger()Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->logCreate(Landroid/content/Context;Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V

    goto :goto_0

    .line 532
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    goto :goto_1
.end method

.method public static newInstance(Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/Event;J)Lcom/android/calendar/newapi/screen/GrooveEditScreenController;
    .locals 8

    .prologue
    .line 116
    new-instance v1, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    invoke-direct {v1}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;-><init>()V

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->newInstanceWithArguments(Lcom/android/calendar/newapi/screen/GrooveEditScreenController;Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/Event;JZ)Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/calendar/api/HabitModifications;Z)Lcom/android/calendar/newapi/screen/GrooveEditScreenController;
    .locals 7

    .prologue
    .line 130
    new-instance v1, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    invoke-direct {v1}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;-><init>()V

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v2, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->newInstanceWithArguments(Lcom/android/calendar/newapi/screen/GrooveEditScreenController;Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/Event;JZ)Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    move-result-object v0

    return-object v0
.end method

.method protected static newInstanceWithArguments(Lcom/android/calendar/newapi/screen/GrooveEditScreenController;Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/Event;JZ)Lcom/android/calendar/newapi/screen/GrooveEditScreenController;
    .locals 3

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->HabitFactory:Lcom/google/android/calendar/api/HabitFactory;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/HabitFactory;->modifyHabit(Lcom/google/android/calendar/api/Habit;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 154
    :cond_0
    if-eqz p2, :cond_1

    .line 155
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->EventFactory:Lcom/google/android/calendar/api/EventFactory;

    invoke-interface {v0, p2}, Lcom/google/android/calendar/api/EventFactory;->modifyEvent(Lcom/google/android/calendar/api/Event;)Lcom/google/android/calendar/api/EventModifications;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 157
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    const-string v1, "ARG_EVENT_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 159
    const-string v1, "ARG_RETURN_TO_ACTIVITY"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->setArguments(Landroid/os/Bundle;)V

    .line 161
    return-object p0
.end method

.method private notifyContentProvider()V
    .locals 3

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_EVENT_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 553
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 554
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 555
    return-void
.end method

.method private unwrapModifications(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/calendar/api/HabitModifications;
    .locals 3

    .prologue
    .line 542
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getOriginal()Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    if-nez v0, :cond_0

    .line 543
    const-string v0, "GrooveEditScreenController"

    const-string v1, "Trying to unwrap a habit without the original."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 548
    :goto_0
    return-object p1

    .line 546
    :cond_0
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getOriginal()Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    .line 547
    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/HabitModifications;->applyModifications(Lcom/google/android/calendar/api/HabitModifications;)V

    move-object p1, v0

    .line 548
    goto :goto_0
.end method


# virtual methods
.method protected createLoader(Landroid/content/Context;Lcom/google/android/calendar/api/Event;)Lcom/android/calendar/newapi/screen/EventEditScreenLoader;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getEventDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;-><init>(Landroid/content/Context;Lcom/google/android/calendar/api/EventDescriptor;Lcom/google/android/calendar/api/Event;)V

    return-object v0
.end method

.method protected getDiscardChangesMessage()I
    .locals 1

    .prologue
    .line 408
    sget v0, Lcom/android/calendar/R$string;->discard_goal_message:I

    return v0
.end method

.method public getEventDescriptor()Lcom/google/android/calendar/api/EventDescriptor;
    .locals 4

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->isNewHabit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    .line 264
    new-instance v0, Lcom/google/android/calendar/api/EventDescriptor;

    iget-object v1, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ARG_EVENT_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/calendar/api/EventDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method protected getPrimesLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const-string v0, "GrooveEdit"

    return-object v0
.end method

.method protected isModified()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->isModified()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 403
    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->isModified()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    .line 403
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewHabit()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->isNewHabit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/screen/EditScreenController;->onCreate(Landroid/os/Bundle;)V

    .line 169
    if-eqz p1, :cond_0

    .line 170
    const-string v0, "INSTANCE_GROOVE_MODIFICATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 171
    const-string v0, "INSTANCE_EVENT_MODIFICATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 173
    :cond_0
    return-void
.end method

.method public onDiscard()V
    .locals 2

    .prologue
    .line 390
    invoke-super {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->onDiscard()V

    .line 391
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_RETURN_TO_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 393
    instance-of v1, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenListener;

    if-nez v1, :cond_0

    .line 394
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has to implement GrooveEditScreenListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    check-cast v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenListener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenListener;->onEditCancelled()V

    .line 398
    :cond_1
    return-void
.end method

.method public onLoadingFailure(Lcom/android/calendar/newapi/common/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/common/Loader",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->edit_error_event_not_found:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->dismiss()V

    .line 242
    return-void
.end method

.method public onLoadingSuccess(Lcom/android/calendar/newapi/common/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/common/Loader",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->EventFactory:Lcom/google/android/calendar/api/EventFactory;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {v1}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/EventFactory;->modifyEvent(Lcom/google/android/calendar/api/Event;)Lcom/google/android/calendar/api/EventModifications;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->getCalendarStore()Lcom/android/calendar/newapi/model/CalendarStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    .line 234
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->getNotificationStore()Lcom/android/calendar/newapi/model/NotificationStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

    .line 235
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->createSegments()Lcom/android/calendar/newapi/screen/SegmentViews;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->setupSegments(Lcom/android/calendar/newapi/screen/SegmentViews;)V

    .line 236
    return-void
.end method

.method public onSaveClicked()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 415
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ARG_RETURN_TO_ACTIVITY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 418
    instance-of v1, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenListener;

    if-nez v1, :cond_0

    .line 419
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has to implement GrooveEditScreenListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    check-cast v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenListener;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0, v1}, Lcom/android/calendar/newapi/screen/GrooveEditScreenListener;->onEditFinished(Lcom/google/android/calendar/api/HabitModifications;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->dismiss()V

    .line 503
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 430
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->hasStartTimeChanges()Z

    move-result v4

    .line 432
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->isNewHabit()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 434
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->unwrapModifications(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v0

    .line 435
    new-instance v2, Lcom/android/calendar/newapi/common/BatchingPendingResult;

    new-array v3, v7, [Lcom/google/android/gms/common/api/PendingResult;

    iget-object v5, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitClient:Lcom/google/android/calendar/api/HabitClient;

    invoke-interface {v5, v0}, Lcom/google/android/calendar/api/HabitClient;->create(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-direct {v2, v3}, Lcom/android/calendar/newapi/common/BatchingPendingResult;-><init>([Lcom/google/android/gms/common/api/PendingResult;)V

    iput-object v2, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    .line 436
    new-instance v0, Lcom/android/calendar/newapi/model/GrooveCalendarHolder;

    iget-object v2, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-direct {v0, v2}, Lcom/android/calendar/newapi/model/GrooveCalendarHolder;-><init>(Lcom/google/android/calendar/api/Habit;)V

    iget-object v2, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    invoke-static {v0, v2}, Lcom/android/calendar/newapi/common/ApiUtils;->setDefaultCalendar(Lcom/android/calendar/newapi/model/CalendarHolder;Lcom/android/calendar/newapi/model/CalendarStore;)V

    move v0, v1

    .line 457
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    new-instance v2, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;

    invoke-direct {v2, p0, v4, v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;-><init>(Lcom/android/calendar/newapi/screen/GrooveEditScreenController;ZZ)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/newapi/common/BatchingPendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 439
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    if-eqz v2, :cond_4

    .line 441
    iget-object v2, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContractModifications;->isModified()Z

    move-result v3

    .line 442
    iget-object v2, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitClient:Lcom/google/android/calendar/api/HabitClient;

    iget-object v5, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v2, v5}, Lcom/google/android/calendar/api/HabitClient;->update(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    .line 443
    new-instance v5, Lcom/android/calendar/newapi/model/GrooveCalendarHolder;

    iget-object v6, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-direct {v5, v6}, Lcom/android/calendar/newapi/model/GrooveCalendarHolder;-><init>(Lcom/google/android/calendar/api/Habit;)V

    iget-object v6, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    invoke-static {v5, v6}, Lcom/android/calendar/newapi/common/ApiUtils;->setDefaultCalendar(Lcom/android/calendar/newapi/model/CalendarHolder;Lcom/android/calendar/newapi/model/CalendarStore;)V

    move-object v8, v2

    move v2, v3

    move-object v3, v8

    .line 452
    :goto_2
    if-eqz v4, :cond_3

    .line 453
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventClient:Lcom/google/android/calendar/api/EventClient;

    iget-object v5, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0, v5}, Lcom/google/android/calendar/api/EventClient;->update(Lcom/google/android/calendar/api/EventModifications;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 455
    :cond_3
    new-instance v5, Lcom/android/calendar/newapi/common/BatchingPendingResult;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/android/gms/common/api/PendingResult;

    aput-object v0, v6, v1

    aput-object v3, v6, v7

    invoke-direct {v5, v6}, Lcom/android/calendar/newapi/common/BatchingPendingResult;-><init>([Lcom/google/android/gms/common/api/PendingResult;)V

    iput-object v5, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    move v0, v2

    goto :goto_1

    :cond_4
    move-object v3, v0

    move v2, v1

    .line 447
    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/screen/EditScreenController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    const-string v0, "INSTANCE_GROOVE_MODIFICATION"

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    const-string v0, "INSTANCE_EVENT_MODIFICATION"

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->onStart()V

    .line 196
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->setCallback(Lcom/android/calendar/newapi/common/Loader$Callback;)V

    .line 197
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->load()V

    .line 198
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->setCallback(Lcom/android/calendar/newapi/common/Loader$Callback;)V

    .line 203
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->cancel()V

    .line 205
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/common/BatchingPendingResult;->cancel()V

    .line 207
    iput-object v1, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    .line 209
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->onStop()V

    .line 210
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/android/calendar/newapi/screen/EditScreenController;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 179
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->ensureCalendarApiInitialization()V

    .line 182
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->isNewHabit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 183
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->createLoader(Landroid/content/Context;Lcom/google/android/calendar/api/Event;)Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    .line 184
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    goto :goto_0
.end method
