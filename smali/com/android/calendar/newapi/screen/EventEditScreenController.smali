.class public Lcom/android/calendar/newapi/screen/EventEditScreenController;
.super Lcom/android/calendar/newapi/screen/EditScreenController;
.source "EventEditScreenController.java"

# interfaces
.implements Lcom/android/calendar/newapi/common/Loader$Callback;


# instance fields
.field private mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

.field mEventClient:Lcom/google/android/calendar/api/EventClient;

.field protected mEventModifications:Lcom/google/android/calendar/api/EventModifications;

.field private mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

.field private mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

.field private mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;-><init>()V

    .line 86
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Events:Lcom/google/android/calendar/api/EventClient;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventClient:Lcom/google/android/calendar/api/EventClient;

    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/newapi/screen/EventEditScreenController;Lcom/android/calendar/newapi/common/BatchingPendingResult;)Lcom/android/calendar/newapi/common/BatchingPendingResult;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    return-object p1
.end method

.method private createSegments()Lcom/android/calendar/newapi/screen/SegmentViews;
    .locals 17

    .prologue
    .line 212
    new-instance v4, Lcom/android/calendar/newapi/model/EventTitleModification;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-direct {v4, v1}, Lcom/android/calendar/newapi/model/EventTitleModification;-><init>(Lcom/google/android/calendar/api/EventModifications;)V

    .line 213
    new-instance v5, Lcom/android/calendar/newapi/model/EventColorModification;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-direct {v5, v1}, Lcom/android/calendar/newapi/model/EventColorModification;-><init>(Lcom/google/android/calendar/api/EventModifications;)V

    .line 214
    new-instance v6, Lcom/android/calendar/newapi/model/EventCalendarModification;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-direct {v6, v1}, Lcom/android/calendar/newapi/model/EventCalendarModification;-><init>(Lcom/google/android/calendar/api/EventModifications;)V

    .line 215
    new-instance v13, Lcom/android/calendar/newapi/model/EventVisibilityModification;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-direct {v13, v1}, Lcom/android/calendar/newapi/model/EventVisibilityModification;-><init>(Lcom/google/android/calendar/api/EventModifications;)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    .line 222
    new-instance v16, Lcom/android/calendar/newapi/screen/SegmentViews;

    invoke-direct/range {v16 .. v16}, Lcom/android/calendar/newapi/screen/SegmentViews;-><init>()V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->newView(Landroid/content/Context;)Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    move-result-object v3

    .line 225
    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->headerView:Landroid/view/View;

    .line 226
    const-string v2, "TitleEditSegmentController"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->getColorCache()Lcom/google/android/calendar/api/ColorCache;

    move-result-object v8

    const/4 v9, 0x0

    .line 227
    invoke-static/range {v1 .. v9}, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/title/TitleEditSegment;Lcom/android/calendar/newapi/model/TitleModification;Lcom/android/calendar/newapi/model/ColorModification;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/google/android/calendar/api/ColorCache;Z)Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;

    move-result-object v2

    .line 226
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    sget-object v3, Lcom/android/calendar/event/data/LoadDetailsUtils;->VISIBLE_WRITABLE_CALENDAR_PREDICATE:Lcom/google/common/base/Predicate;

    .line 239
    invoke-virtual {v2, v3}, Lcom/android/calendar/newapi/model/CalendarStore;->getMatchingCalendars(Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v12

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->isNewEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 241
    invoke-static {v15}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;

    move-result-object v9

    .line 242
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v8, "CalendarEditSegmentController"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    move-object v7, v1

    move-object v10, v6

    .line 244
    invoke-static/range {v7 .. v12}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Ljava/util/Map;)Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;

    move-result-object v2

    .line 243
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 252
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->createDivider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    invoke-static {v15}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;

    move-result-object v2

    .line 256
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    const-string v3, "EventTimeEditSegmentController"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 258
    invoke-static {v1, v3, v2, v4, v14}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;Lcom/google/android/calendar/api/EventModifications;Ljava/util/TimeZone;)Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;

    move-result-object v2

    .line 257
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 265
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->createDivider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-static {v15}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegment;

    move-result-object v2

    .line 268
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v3, "TimeZoneEditSegmentController"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 270
    invoke-static {v1, v3, v2, v4, v14}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegment;Lcom/google/android/calendar/api/EventModifications;Ljava/util/TimeZone;)Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;

    move-result-object v2

    .line 269
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 277
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->createDivider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-static {v15}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;

    move-result-object v10

    .line 280
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    const-string v8, "NotificationEditSegmentController"

    new-instance v9, Lcom/android/calendar/newapi/model/Holder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-direct {v9, v2}, Lcom/android/calendar/newapi/model/Holder;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

    move-object v7, v1

    .line 282
    invoke-static/range {v7 .. v12}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/model/Holder;Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/android/calendar/newapi/model/NotificationStore;)Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;

    move-result-object v2

    .line 281
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 290
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->createDivider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-static {v15}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/color/ColorEditSegment;

    move-result-object v4

    .line 293
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v3, "ColorEditSegmentController"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->getColorCache()Lcom/google/android/calendar/api/ColorCache;

    move-result-object v8

    move-object v2, v1

    .line 295
    invoke-static/range {v2 .. v8}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/color/ColorEditSegment;Lcom/android/calendar/newapi/model/ColorModification;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/google/android/calendar/api/ColorCache;)Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;

    move-result-object v2

    .line 294
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 304
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->createDivider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-static {v15}, Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/note/NoteEditSegment;

    move-result-object v2

    .line 307
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    const-string v3, "NoteEditSegmentController"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 309
    invoke-static {v1, v3, v2, v4}, Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/note/NoteEditSegment;Lcom/google/android/calendar/api/EventModifications;)Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;

    move-result-object v2

    .line 308
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 315
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->createDivider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-static {v15}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;

    move-result-object v2

    .line 318
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v3, "AttachmentEditSegmentController"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 320
    invoke-static {v1, v3, v2, v4}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;Lcom/google/android/calendar/api/EventModifications;)Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;

    move-result-object v2

    .line 319
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 326
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->createDivider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-static {v15}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;

    move-result-object v2

    .line 329
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v3, "VisibilityEditSegmentController"

    .line 331
    invoke-static {v1, v3, v2, v13}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;Lcom/android/calendar/newapi/model/VisibilityModification;)Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;

    move-result-object v2

    .line 330
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 337
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->createDivider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-static {v15}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment;

    move-result-object v2

    .line 340
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const-string v3, "AvailabilityEditSegmentController"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 342
    invoke-static {v1, v3, v2, v4}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment;Lcom/google/android/calendar/api/EventModifications;)Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;

    move-result-object v1

    .line 341
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V

    .line 348
    return-object v16
.end method

.method public static newInstance(Lcom/google/android/calendar/api/Event;)Lcom/android/calendar/newapi/screen/EventEditScreenController;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;-><init>()V

    invoke-static {v0, p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->newInstanceWithArguments(Lcom/android/calendar/newapi/screen/EventEditScreenController;Lcom/google/android/calendar/api/Event;)Lcom/android/calendar/newapi/screen/EventEditScreenController;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/android/calendar/newapi/screen/EventEditScreenController;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/android/calendar/newapi/screen/EventEditScreenController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;-><init>()V

    invoke-static {v0, p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->newInstanceWithArguments(Lcom/android/calendar/newapi/screen/EventEditScreenController;Lcom/google/android/calendar/api/EventDescriptor;)Lcom/android/calendar/newapi/screen/EventEditScreenController;

    move-result-object v0

    return-object v0
.end method

.method protected static newInstanceWithArguments(Lcom/android/calendar/newapi/screen/EventEditScreenController;Lcom/google/android/calendar/api/Event;)Lcom/android/calendar/newapi/screen/EventEditScreenController;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->EventFactory:Lcom/google/android/calendar/api/EventFactory;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/EventFactory;->modifyEvent(Lcom/google/android/calendar/api/Event;)Lcom/google/android/calendar/api/EventModifications;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 112
    return-object p0
.end method

.method protected static newInstanceWithArguments(Lcom/android/calendar/newapi/screen/EventEditScreenController;Lcom/google/android/calendar/api/EventDescriptor;)Lcom/android/calendar/newapi/screen/EventEditScreenController;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    const-string v1, "ARG_EVENT_DESCRIPTOR"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->setArguments(Landroid/os/Bundle;)V

    .line 121
    return-object p0
.end method


# virtual methods
.method protected createLoader(Landroid/content/Context;Lcom/google/android/calendar/api/EventDescriptor;)Lcom/android/calendar/newapi/screen/EventEditScreenLoader;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;-><init>(Landroid/content/Context;Lcom/google/android/calendar/api/EventDescriptor;Lcom/google/android/calendar/api/Event;)V

    return-object v0
.end method

.method protected getDiscardChangesMessage()I
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->isNewEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/calendar/R$string;->discard_dialog_body_new_event:I

    :goto_0
    return v0

    .line 393
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->discard_dialog_body_existing_event:I

    goto :goto_0
.end method

.method protected getPrimesLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, "EventEdit"

    return-object v0
.end method

.method protected isModified()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->isModified()Z

    move-result v0

    return v0
.end method

.method public isNewEvent()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->isNewEvent()Z

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
    .line 128
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/screen/EditScreenController;->onCreate(Landroid/os/Bundle;)V

    .line 129
    if-eqz p1, :cond_0

    .line 130
    const-string v0, "INSTANCE_EVENT_MODIFICATIONS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 132
    :cond_0
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
    .line 200
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->edit_error_event_not_found:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->dismiss()V

    .line 202
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
    .line 190
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->getCalendarStore()Lcom/android/calendar/newapi/model/CalendarStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    .line 191
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->getNotificationStore()Lcom/android/calendar/newapi/model/NotificationStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

    .line 192
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    if-nez v0, :cond_0

    .line 193
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->EventFactory:Lcom/google/android/calendar/api/EventFactory;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {v1}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/EventFactory;->modifyEvent(Lcom/google/android/calendar/api/Event;)Lcom/google/android/calendar/api/EventModifications;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->createSegments()Lcom/android/calendar/newapi/screen/SegmentViews;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->setupSegments(Lcom/android/calendar/newapi/screen/SegmentViews;)V

    .line 196
    return-void
.end method

.method public onSaveClicked()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 355
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->isNewEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Lcom/android/calendar/newapi/common/BatchingPendingResult;

    new-array v1, v2, [Lcom/google/android/gms/common/api/PendingResult;

    iget-object v2, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventClient:Lcom/google/android/calendar/api/EventClient;

    iget-object v3, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v2, v3}, Lcom/google/android/calendar/api/EventClient;->create(Lcom/google/android/calendar/api/EventModifications;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/android/calendar/newapi/common/BatchingPendingResult;-><init>([Lcom/google/android/gms/common/api/PendingResult;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    .line 361
    :goto_0
    new-instance v0, Lcom/android/calendar/newapi/model/EventCalendarModification;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-direct {v0, v1}, Lcom/android/calendar/newapi/model/EventCalendarModification;-><init>(Lcom/google/android/calendar/api/EventModifications;)V

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    invoke-static {v0, v1}, Lcom/android/calendar/newapi/common/ApiUtils;->setDefaultCalendar(Lcom/android/calendar/newapi/model/CalendarHolder;Lcom/android/calendar/newapi/model/CalendarStore;)V

    .line 362
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    new-instance v1, Lcom/android/calendar/newapi/screen/EventEditScreenController$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController$1;-><init>(Lcom/android/calendar/newapi/screen/EventEditScreenController;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/common/BatchingPendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 381
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventClient:Lcom/google/android/calendar/api/EventClient;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/EventClient;->update(Lcom/google/android/calendar/api/EventModifications;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 359
    new-instance v1, Lcom/android/calendar/newapi/common/BatchingPendingResult;

    new-array v2, v2, [Lcom/google/android/gms/common/api/PendingResult;

    aput-object v0, v2, v4

    invoke-direct {v1, v2}, Lcom/android/calendar/newapi/common/BatchingPendingResult;-><init>([Lcom/google/android/gms/common/api/PendingResult;)V

    iput-object v1, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/screen/EditScreenController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 137
    const-string v0, "INSTANCE_EVENT_MODIFICATIONS"

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->onStart()V

    .line 164
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->setCallback(Lcom/android/calendar/newapi/common/Loader$Callback;)V

    .line 165
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->load()V

    .line 166
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->setCallback(Lcom/android/calendar/newapi/common/Loader$Callback;)V

    .line 171
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventEditScreenLoader;->cancel()V

    .line 173
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/common/BatchingPendingResult;->cancel()V

    .line 175
    iput-object v1, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    .line 177
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->onStop()V

    .line 178
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Lcom/android/calendar/newapi/screen/EditScreenController;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 143
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ARG_EVENT_DESCRIPTOR"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_EVENT_DESCRIPTOR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventDescriptor;

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->isNewEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-static {}, Lcom/google/android/calendar/api/ColorCache;->initialize()V

    .line 153
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->createLoader(Landroid/content/Context;Lcom/google/android/calendar/api/EventDescriptor;)Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController;->mLoader:Lcom/android/calendar/newapi/screen/EventEditScreenLoader;

    .line 154
    return-void
.end method
