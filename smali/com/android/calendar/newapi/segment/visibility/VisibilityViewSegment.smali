.class public Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;
.super Lcom/android/calendar/newapi/view/TextTileView;
.source "VisibilityViewSegment.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/common/ViewSegment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelT::",
        "Lcom/android/calendar/newapi/model/VisibilityHolder;",
        ">",
        "Lcom/android/calendar/newapi/view/TextTileView;",
        "Lcom/android/calendar/newapi/segment/common/ViewSegment;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mModel:Lcom/android/calendar/newapi/model/VisibilityHolder;
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
    .line 15
    const-class v0, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/VisibilityHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TModelT;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/view/TextTileView;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;->mModel:Lcom/android/calendar/newapi/model/VisibilityHolder;

    .line 22
    return-void
.end method


# virtual methods
.method protected setupView()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/android/calendar/newapi/view/TextTileView;->setupView()V

    .line 27
    sget v0, Lcom/android/calendar/R$drawable;->ic_visibility:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;->setIconDrawable(I)Lcom/android/calendar/newapi/view/TileView;

    .line 28
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->describe_visibility_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    invoke-static {p0}, Lcom/android/calendar/newapi/view/MaterialViewUtils;->addMaterialListStyling(Landroid/view/ViewGroup;)V

    .line 30
    return-void
.end method

.method public updateUi()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;->mModel:Lcom/android/calendar/newapi/model/VisibilityHolder;

    .line 37
    invoke-interface {v0}, Lcom/android/calendar/newapi/model/VisibilityHolder;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 35
    :goto_0
    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 39
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/calendar/R$array;->visibility_labels:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v3, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;->mModel:Lcom/android/calendar/newapi/model/VisibilityHolder;

    invoke-interface {v3}, Lcom/android/calendar/newapi/model/VisibilityHolder;->getVisibility()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 51
    sget-object v0, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected visibility supplied."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 52
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 55
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 37
    goto :goto_0

    .line 42
    :pswitch_0
    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    goto :goto_1

    .line 45
    :pswitch_1
    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    goto :goto_1

    .line 48
    :pswitch_2
    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    goto :goto_1

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
