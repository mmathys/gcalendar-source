.class public Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;
.super Landroid/widget/LinearLayout;
.source "AttendeeViewSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/calendar/newapi/segment/common/ViewSegment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelT::",
        "Lcom/android/calendar/newapi/model/EventHolder;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/calendar/newapi/segment/common/ViewSegment;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mModel:Lcom/android/calendar/newapi/model/EventHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelT;"
        }
    .end annotation
.end field

.field private final mResponseStatusMessages:[Ljava/lang/String;

.field private final mStatusBucketSpacing:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/calendar/newapi/model/EventHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TModelT;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->mActivity:Landroid/app/Activity;

    .line 32
    invoke-static {p0}, Lcom/android/calendar/newapi/view/MaterialViewUtils;->addMaterialListStyling(Landroid/view/ViewGroup;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->describe_guests_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->setOrientation(I)V

    .line 35
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    .line 36
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$array;->attendee_response_status:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->mResponseStatusMessages:[Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->tile_contact_status_bucket_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->mStatusBucketSpacing:I

    .line 39
    return-void
.end method

.method private createAttendeeView(Lcom/google/android/calendar/api/attendee/Attendee;)Landroid/view/View;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->setAttendee(Lcom/google/android/calendar/api/attendee/Attendee;)Lcom/android/calendar/newapi/segment/attendee/ContactTileView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->treatAsButton()Lcom/android/calendar/newapi/view/TileView;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/android/calendar/newapi/view/TileView;->indentContent()Lcom/android/calendar/newapi/view/TileView;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/view/TileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-object v0
.end method

.method private createHeaderView(II)Landroid/view/View;
    .locals 5

    .prologue
    .line 92
    new-instance v0, Lcom/android/calendar/newapi/view/HeadlineTileView;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/newapi/view/HeadlineTileView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->mResponseStatusMessages:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/view/HeadlineTileView;->setText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/HeadlineTileView;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/android/calendar/newapi/view/HeadlineTileView;->indentContent()Lcom/android/calendar/newapi/view/TileView;

    move-result-object v0

    .line 92
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/calendar/api/attendee/Attendee;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attendee/Attendee;

    .line 109
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->requestContactsPermissionsIfMissing(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->analytics_category_event_action:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v2

    .line 114
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tap_guest"

    invoke-interface {v2, v3, v1, v4}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getExtensions()Lcom/android/calendar/UnifiedExtensions;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->mActivity:Landroid/app/Activity;

    iget-object v3, v0, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    iget-object v3, v3, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->email:Ljava/lang/String;

    .line 118
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->getContactInfo(Lcom/google/android/calendar/api/attendee/Attendee;)Lcom/android/calendar/timely/ContactInfo;

    move-result-object v0

    .line 116
    invoke-interface {v1, v2, v3, v0}, Lcom/android/calendar/UnifiedExtensions;->showSmartProfile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/calendar/timely/ContactInfo;)V

    goto :goto_0
.end method

.method public updateUi()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->removeAllViews()V

    .line 45
    new-instance v3, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    .line 46
    invoke-interface {v2}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/calendar/api/Event;->getAttendees()Ljava/util/List;

    move-result-object v2

    sget-object v4, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->GUEST_FILTER:Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;

    invoke-direct {v3, v2, v4}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;-><init>(Ljava/util/List;Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;)V

    .line 47
    invoke-virtual {v3}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;->getAttendeeCount()I

    move-result v2

    if-gt v2, v1, :cond_1

    .line 48
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->setVisibility(I)V

    .line 89
    :cond_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->setVisibility(I)V

    .line 54
    new-instance v2, Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/calendar/newapi/view/TextTileView;-><init>(Landroid/content/Context;)V

    .line 55
    sget v4, Lcom/android/calendar/R$drawable;->ic_guests:I

    invoke-virtual {v2, v4}, Lcom/android/calendar/newapi/view/TextTileView;->setIconDrawable(I)Lcom/android/calendar/newapi/view/TileView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/newapi/view/TileView;->indentContent()Lcom/android/calendar/newapi/view/TileView;

    .line 56
    invoke-virtual {v3}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;->getAttendeeCount()I

    move-result v4

    .line 58
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/calendar/R$plurals;->guest_count:I

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {v2, v4}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 60
    invoke-static {v2}, Lcom/android/calendar/AccessibilityUtils;->setImportantForAccessibility(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->addView(Landroid/view/View;)V

    .line 68
    sget-object v4, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->RESPONSE_PRIORITY:[I

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_0

    aget v6, v4, v2

    .line 70
    invoke-virtual {v3, v6}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;->getAttendees(I)Ljava/util/Collection;

    move-result-object v7

    .line 71
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 68
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_2
    if-eqz v0, :cond_3

    .line 77
    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 78
    iget v8, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->mStatusBucketSpacing:I

    invoke-virtual {v0, v8}, Landroid/widget/Space;->setMinimumHeight(I)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->addView(Landroid/view/View;)V

    .line 83
    :cond_3
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v6, v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->createHeaderView(II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->addView(Landroid/view/View;)V

    .line 84
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attendee/Attendee;

    .line 85
    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->createAttendeeView(Lcom/google/android/calendar/api/attendee/Attendee;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    move v0, v1

    .line 87
    goto :goto_1
.end method
