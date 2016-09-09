.class public Lcom/google/android/calendar/event/segment/ContactSegment;
.super Lcom/android/calendar/event/segment/ClickableSegment;
.source "ContactSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/segment/ContactSegment$ContactProvider;
    }
.end annotation


# static fields
.field private static final MODE_ICONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODE_ICON_DESCRIPTIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODE_URI_SCHEMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mIconImageView:Landroid/widget/ImageView;

.field private mMode:I

.field private mUrl:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 27
    const-class v0, Lcom/google/android/calendar/event/segment/ContactSegment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/segment/ContactSegment;->TAG:Ljava/lang/String;

    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "tel"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "sms"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "mailto"

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/segment/ContactSegment;->MODE_URI_SCHEMES:Ljava/util/Map;

    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$drawable;->quantum_ic_call_grey600_24:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 49
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$drawable;->ic_hangout_message:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 50
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/android/calendar/R$drawable;->quantum_ic_email_grey600_24:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 47
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/segment/ContactSegment;->MODE_ICONS:Ljava/util/Map;

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->describe_phone_icon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 54
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->describe_sms_icon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 55
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/android/calendar/R$string;->describe_email_icon:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 52
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/segment/ContactSegment;->MODE_ICON_DESCRIPTIONS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/ContactSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/ContactSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ClickableSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mMode:I

    .line 76
    sget v0, Lcom/android/calendar/R$id;->contact_icon:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/ContactSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mIconImageView:Landroid/widget/ImageView;

    .line 77
    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/ContactSegment;->updateModeViews()V

    .line 78
    return-void
.end method

.method private static extractPhoneLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 153
    invoke-static {p0, v4}, Lcom/android/common/extendedlinkify/ExtendedLinkify;->extendedLinkify(Ljava/lang/String;Z)Landroid/text/Spannable;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 157
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 158
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 158
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 160
    goto :goto_0
.end method

.method private updateModeViews()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mIconImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ContactSegment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mIconImageView:Landroid/widget/ImageView;

    sget-object v0, Lcom/google/android/calendar/event/segment/ContactSegment;->MODE_ICONS:Ljava/util/Map;

    iget v2, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v1, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ContactSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v0, Lcom/google/android/calendar/event/segment/ContactSegment;->MODE_ICON_DESCRIPTIONS:Ljava/util/Map;

    iget v3, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mMode:I

    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 139
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected getUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/calendar/R$layout;->segment_contact:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    sget v0, Lcom/android/calendar/R$id;->contact_text:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/ContactSegment;->setOnMeasureView(I)V

    .line 84
    return-void
.end method

.method public onRefreshModel()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-super {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->onRefreshModel()V

    .line 89
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    if-eqz v0, :cond_6

    .line 90
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/ContactSegment$ContactProvider;

    .line 91
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/ContactSegment$ContactProvider;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/ContactSegment$ContactProvider;->getDisplayText()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 102
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_1
    sget v4, Lcom/android/calendar/R$id;->contact_text:I

    invoke-virtual {p0, v4, v1}, Lcom/google/android/calendar/event/segment/ContactSegment;->setText(ILjava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    iget v1, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mMode:I

    if-nez v1, :cond_3

    .line 111
    invoke-static {v2}, Lcom/google/android/calendar/event/segment/ContactSegment;->extractPhoneLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    if-nez v1, :cond_2

    move-object v1, v3

    :goto_2
    iput-object v1, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mUrl:Landroid/net/Uri;

    .line 117
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ContactSegment;->show()V

    .line 123
    :goto_4
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/ContactSegment$ContactProvider;->getAnalyticsAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mAnalyticsAction:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ContactSegment;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/ContactSegment;->enableAction(Z)V

    .line 130
    :goto_6
    return-void

    .line 98
    :cond_0
    const-string v1, ""

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 105
    goto :goto_1

    .line 112
    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    .line 114
    :cond_3
    sget-object v1, Lcom/google/android/calendar/event/segment/ContactSegment;->MODE_URI_SCHEMES:Ljava/util/Map;

    iget v4, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mUrl:Landroid/net/Uri;

    goto :goto_3

    .line 119
    :cond_4
    iput-object v3, p0, Lcom/google/android/calendar/event/segment/ContactSegment;->mUrl:Landroid/net/Uri;

    .line 120
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ContactSegment;->hide()V

    goto :goto_4

    .line 126
    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    .line 128
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ContactSegment;->hide()V

    goto :goto_6
.end method

.method protected startAction()V
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ContactSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ContactSegment;->getUrl()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/calendar/event/segment/ContactSegment;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->startActivityForUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 170
    return-void
.end method
