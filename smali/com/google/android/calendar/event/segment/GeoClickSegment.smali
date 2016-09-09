.class public abstract Lcom/google/android/calendar/event/segment/GeoClickSegment;
.super Lcom/google/android/calendar/event/segment/SmartInfoSegment;
.source "GeoClickSegment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mUrl:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/android/calendar/event/segment/GeoClickSegment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/segment/GeoClickSegment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected enableAction(Z)V
    .locals 1

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    new-instance v0, Lcom/google/android/calendar/event/segment/GeoClickSegment$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/segment/GeoClickSegment$1;-><init>(Lcom/google/android/calendar/event/segment/GeoClickSegment;)V

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/GeoClickSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/GeoClickSegment;->setClickable(Z)V

    goto :goto_0
.end method

.method protected final getUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/GeoClickSegment;->mUrl:Landroid/net/Uri;

    return-object v0
.end method

.method protected getValueId()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GeoClickSegment;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GeoClickSegment;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GeoClickSegment;->setToChildrenContentDescription()V

    .line 112
    :cond_0
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 114
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GeoClickSegment;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onRefreshModel()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/GeoClickSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method public setUrlByLocation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/calendar/utils/MapsUrlBuilder;

    invoke-direct {v0}, Lcom/google/android/calendar/utils/MapsUrlBuilder;-><init>()V

    .line 61
    invoke-virtual {v0, p1}, Lcom/google/android/calendar/utils/MapsUrlBuilder;->setAddress(Ljava/lang/String;)Lcom/google/android/calendar/utils/MapsUrlBuilder;

    .line 62
    invoke-virtual {v0}, Lcom/google/android/calendar/utils/MapsUrlBuilder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/GeoClickSegment;->updateUrl(Landroid/net/Uri;)V

    .line 63
    return-void
.end method

.method protected startAction()V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GeoClickSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GeoClickSegment;->getUrl()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/calendar/event/segment/GeoClickSegment;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->startActivityForUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 96
    return-void
.end method

.method protected final updateUrl(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/calendar/event/segment/GeoClickSegment;->mUrl:Landroid/net/Uri;

    .line 72
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GeoClickSegment;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/GeoClickSegment;->enableAction(Z)V

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
