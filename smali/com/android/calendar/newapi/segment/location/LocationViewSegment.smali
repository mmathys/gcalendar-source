.class public Lcom/android/calendar/newapi/segment/location/LocationViewSegment;
.super Lcom/android/calendar/newapi/segment/note/ConferenceTileView;
.source "LocationViewSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;
.implements Lcom/android/calendar/newapi/segment/common/ViewSegment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelT::",
        "Lcom/android/calendar/newapi/model/EventHolder;",
        ":",
        "Lcom/android/calendar/newapi/model/ConferenceEvent;",
        ">",
        "Lcom/android/calendar/newapi/segment/note/ConferenceTileView;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;",
        "Lcom/android/calendar/newapi/segment/common/ViewSegment;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mLocationType:I

.field private final mModel:Lcom/android/calendar/newapi/model/EventHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/calendar/newapi/model/EventHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/FragmentManager;",
            "TModelT;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/note/ConferenceTileView;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->indentContent()Lcom/android/calendar/newapi/view/TileView;

    .line 94
    sget v0, Lcom/android/calendar/R$drawable;->ic_location:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->setIconDrawable(I)Lcom/android/calendar/newapi/view/TileView;

    .line 95
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->treatAsButton()Lcom/android/calendar/newapi/view/TileView;

    .line 96
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->mFragmentManager:Landroid/app/FragmentManager;

    .line 97
    invoke-static {p0}, Lcom/android/calendar/newapi/view/MaterialViewUtils;->addMaterialListStyling(Landroid/view/ViewGroup;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->describe_location_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    iput-object p3, p0, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    .line 100
    invoke-virtual {p0, p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->setConferenceNumberClickListener(Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;)V

    .line 101
    return-void
.end method

.method private getClickableSpans(Landroid/text/Spanned;)[Landroid/text/style/ClickableSpan;
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    return-object v0
.end method

.method private getLocation()Lcom/google/android/calendar/api/structuredlocation/EventLocation;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getLocation()Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;->getEventLocations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getLocation()Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;->getEventLocations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;

    goto :goto_0
.end method

.method private getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getAnalyticsSegmentDescription()I
    .locals 1

    .prologue
    .line 168
    sget v0, Lcom/android/calendar/R$string;->analytics_label_in_segment_location:I

    return v0
.end method

.method public getLocationType()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 184
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getLocation()Lcom/google/android/calendar/api/structuredlocation/EventLocation;

    move-result-object v1

    .line 185
    iget-object v2, v1, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->address:Lcom/google/android/calendar/api/structuredlocation/Address;

    if-eqz v2, :cond_0

    .line 199
    :goto_0
    return v0

    .line 188
    :cond_0
    iget-object v1, v1, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 191
    invoke-static {v1}, Lcom/android/calendar/event/ConferenceCallUtils;->addLinks(Landroid/text/Spannable;)V

    .line 192
    invoke-direct {p0, v1}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getClickableSpans(Landroid/text/Spanned;)[Landroid/text/style/ClickableSpan;

    move-result-object v1

    array-length v1, v1

    .line 193
    if-nez v1, :cond_1

    .line 194
    const/4 v0, 0x2

    goto :goto_0

    .line 195
    :cond_1
    if-ne v1, v0, :cond_2

    .line 196
    const/4 v0, 0x3

    goto :goto_0

    .line 199
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 140
    iget v0, p0, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->mLocationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getFirstLineText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 142
    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getClickableSpans(Landroid/text/Spanned;)[Landroid/text/style/ClickableSpan;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 146
    instance-of v1, v0, Lcom/android/calendar/event/ConferenceCallSpan;

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x0

    check-cast v0, Lcom/android/calendar/event/ConferenceCallSpan;

    invoke-virtual {v0}, Lcom/android/calendar/event/ConferenceCallSpan;->getConferenceNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->onClick(Lcom/android/calendar/event/ConferenceCallView;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 157
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_category_event_action:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "open_location"

    .line 155
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getLocation()Lcom/google/android/calendar/api/structuredlocation/EventLocation;

    move-result-object v0

    .line 160
    iget-object v1, v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    iget-object v0, v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/calendar/newapi/segment/location/LocationUtils;->createGeoLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/calendar/Utils;->startActivityForUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->url:Ljava/lang/String;

    goto :goto_1
.end method

.method public onClick(Lcom/android/calendar/event/ConferenceCallView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_label_in_segment_location:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/ConferenceCallUtils;->logConferenceLinksTapped(Landroid/content/Context;I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v0, p0, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    check-cast v0, Lcom/android/calendar/newapi/model/ConferenceEvent;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/ConferenceEvent;->getConferenceAccessTokens()Ljava/util/Set;

    move-result-object v0

    .line 178
    invoke-static {v1, v2, p2, v0}, Lcom/android/calendar/event/ConferenceCallUtils;->dialConferenceCall(Landroid/content/Context;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/util/Set;)V

    .line 180
    return-void
.end method

.method public updateUi()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getLocation()Lcom/google/android/calendar/api/structuredlocation/EventLocation;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->setVisibility(I)V

    .line 121
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getLocationType()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->mLocationType:I

    .line 111
    iget v0, p0, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->mLocationType:I

    if-ne v0, v4, :cond_3

    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->setVisibility(I)V

    .line 114
    iget-object v0, v2, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/segment/note/ConferenceTileView;

    .line 115
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getFirstLine()Landroid/widget/TextView;

    move-result-object v3

    iget v0, p0, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->mLocationType:I

    if-ne v0, v4, :cond_4

    .line 116
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 115
    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 118
    iget v0, p0, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->mLocationType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 119
    iget-object v0, v2, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->address:Lcom/google/android/calendar/api/structuredlocation/Address;

    iget-object v1, v0, Lcom/google/android/calendar/api/structuredlocation/Address;->formattedAddress:Ljava/lang/String;

    .line 118
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;->setSecondLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    goto :goto_0

    :cond_3
    move-object v0, p0

    .line 111
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 117
    goto :goto_2
.end method
