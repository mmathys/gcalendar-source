.class public Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;
.super Lcom/android/calendar/newapi/segment/common/SegmentController;
.source "TitleEditSegmentController.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/title/TitleEditSegment$Listener;


# instance fields
.field private mCalendarModification:Lcom/android/calendar/newapi/model/CalendarModification;

.field private mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

.field private mColorCache:Lcom/google/android/calendar/api/ColorCache;

.field private mColorModification:Lcom/android/calendar/newapi/model/ColorModification;

.field private mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

.field private mReadOnly:Z

.field private mTitleModification:Lcom/android/calendar/newapi/model/TitleModification;

.field private mView:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/title/TitleEditSegment;Lcom/android/calendar/newapi/model/TitleModification;Lcom/android/calendar/newapi/model/ColorModification;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/google/android/calendar/api/ColorCache;Z)Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;
    .locals 7

    .prologue
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;

    .line 50
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;-><init>()V

    .line 52
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 54
    :cond_0
    invoke-direct {v0, p2}, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->setView(Lcom/android/calendar/newapi/segment/title/TitleEditSegment;)V

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move v6, p8

    .line 55
    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->setData(Lcom/android/calendar/newapi/model/TitleModification;Lcom/android/calendar/newapi/model/ColorModification;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/google/android/calendar/api/ColorCache;Z)V

    .line 62
    return-object v0
.end method

.method public static newView(Landroid/content/Context;)Lcom/android/calendar/newapi/segment/title/TitleEditSegment;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method private setData(Lcom/android/calendar/newapi/model/TitleModification;Lcom/android/calendar/newapi/model/ColorModification;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/google/android/calendar/api/ColorCache;Z)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mTitleModification:Lcom/android/calendar/newapi/model/TitleModification;

    .line 69
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mColorModification:Lcom/android/calendar/newapi/model/ColorModification;

    .line 70
    iput-object p3, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mCalendarModification:Lcom/android/calendar/newapi/model/CalendarModification;

    .line 71
    iput-object p4, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    .line 72
    iput-object p5, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mColorCache:Lcom/google/android/calendar/api/ColorCache;

    .line 73
    iput-boolean p6, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mReadOnly:Z

    .line 74
    return-void
.end method

.method private setView(Lcom/android/calendar/newapi/segment/title/TitleEditSegment;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    .line 78
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->setListener(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method private updateColorPalette()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mCalendarModification:Lcom/android/calendar/newapi/model/CalendarModification;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/CalendarModification;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mColorCache:Lcom/google/android/calendar/api/ColorCache;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/api/ColorCache;->getEventColors(Landroid/accounts/Account;)Ljava/util/Collection;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mCalendarModification:Lcom/android/calendar/newapi/model/CalendarModification;

    .line 108
    invoke-interface {v3}, Lcom/android/calendar/newapi/model/CalendarModification;->getCalendarId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/calendar/newapi/model/CalendarStore;->getImmutableCalendar(Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->newInstance(Landroid/content/res/Resources;Ljava/util/Collection;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Lcom/android/calendar/newapi/segment/common/ColorPalette;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    .line 110
    return-void
.end method

.method private updateView(Z)V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mTitleModification:Lcom/android/calendar/newapi/model/TitleModification;

    invoke-interface {v1}, Lcom/android/calendar/newapi/model/TitleModification;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->setTitle(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    iget-boolean v1, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mReadOnly:Z

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->setReadOnly(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mColorModification:Lcom/android/calendar/newapi/model/ColorModification;

    .line 116
    invoke-interface {v2}, Lcom/android/calendar/newapi/model/ColorModification;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->getColorEntry(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/android/calendar/newapi/segment/common/ColorEntry;

    move-result-object v1

    iget v1, v1, Lcom/android/calendar/newapi/segment/common/ColorEntry;->color:I

    .line 115
    invoke-virtual {v0, v1, p1}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->setColor(IZ)V

    .line 117
    return-void
.end method


# virtual methods
.method public onCalendarChanged()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->updateColorPalette()V

    .line 101
    sget-boolean v0, Lcom/android/calendar/newapi/segment/common/SegmentController;->sAnimationsOn:Z

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->updateView(Z)V

    .line 102
    return-void
.end method

.method public onColorChanged()V
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/calendar/newapi/segment/common/SegmentController;->sAnimationsOn:Z

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->updateView(Z)V

    .line 96
    return-void
.end method

.method protected onInitialize()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->updateColorPalette()V

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->updateView(Z)V

    .line 85
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegmentController;->mTitleModification:Lcom/android/calendar/newapi/model/TitleModification;

    invoke-interface {v0, p1}, Lcom/android/calendar/newapi/model/TitleModification;->setTitle(Ljava/lang/String;)V

    .line 91
    return-void
.end method
