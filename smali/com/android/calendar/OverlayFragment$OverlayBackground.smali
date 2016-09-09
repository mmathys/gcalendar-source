.class public final enum Lcom/android/calendar/OverlayFragment$OverlayBackground;
.super Ljava/lang/Enum;
.source "OverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/OverlayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverlayBackground"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/calendar/OverlayFragment$OverlayBackground;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/calendar/OverlayFragment$OverlayBackground;

.field public static final enum BottomDocked:Lcom/android/calendar/OverlayFragment$OverlayBackground;

.field public static final enum BottomDockedMatched:Lcom/android/calendar/OverlayFragment$OverlayBackground;

.field public static final enum Floating:Lcom/android/calendar/OverlayFragment$OverlayBackground;

.field public static final enum FullDocked:Lcom/android/calendar/OverlayFragment$OverlayBackground;

.field public static final enum Unknown:Lcom/android/calendar/OverlayFragment$OverlayBackground;


# instance fields
.field private final mBackground:I

.field private final mGravity:I

.field private final mHeight:I

.field private final mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 251
    new-instance v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, -0x2

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/OverlayFragment$OverlayBackground;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->Unknown:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 252
    new-instance v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;

    const-string v1, "Floating"

    const/4 v2, 0x1

    sget v3, Lcom/android/calendar/R$drawable;->sdw_card_float:I

    const/4 v4, -0x1

    const/16 v5, 0x10

    const/4 v6, -0x2

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/OverlayFragment$OverlayBackground;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->Floating:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 254
    new-instance v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;

    const-string v1, "BottomDocked"

    const/4 v2, 0x2

    sget v3, Lcom/android/calendar/R$drawable;->sdw_card_float_tall:I

    sget v4, Lcom/android/calendar/R$dimen;->card_float_tall_margin_top:I

    const/16 v5, 0x50

    const/4 v6, -0x2

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/OverlayFragment$OverlayBackground;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->BottomDocked:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 256
    new-instance v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;

    const-string v1, "BottomDockedMatched"

    const/4 v2, 0x3

    sget v3, Lcom/android/calendar/R$drawable;->sdw_card_float_tall:I

    sget v4, Lcom/android/calendar/R$dimen;->card_docked_matched_margin_top:I

    const/16 v5, 0x50

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/OverlayFragment$OverlayBackground;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->BottomDockedMatched:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 258
    new-instance v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;

    const-string v1, "FullDocked"

    const/4 v2, 0x4

    sget v3, Lcom/android/calendar/R$drawable;->sdw_card_float_full:I

    const/4 v4, 0x0

    const/16 v5, 0x30

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/OverlayFragment$OverlayBackground;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->FullDocked:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 249
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/calendar/OverlayFragment$OverlayBackground;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/calendar/OverlayFragment$OverlayBackground;->Unknown:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/calendar/OverlayFragment$OverlayBackground;->Floating:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/calendar/OverlayFragment$OverlayBackground;->BottomDocked:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/calendar/OverlayFragment$OverlayBackground;->BottomDockedMatched:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/calendar/OverlayFragment$OverlayBackground;->FullDocked:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->$VALUES:[Lcom/android/calendar/OverlayFragment$OverlayBackground;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 271
    iput p3, p0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->mBackground:I

    .line 272
    iput p4, p0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->mTopPadding:I

    .line 273
    iput p5, p0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->mGravity:I

    .line 274
    iput p6, p0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->mHeight:I

    .line 275
    return-void
.end method

.method public static values()[Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->$VALUES:[Lcom/android/calendar/OverlayFragment$OverlayBackground;

    invoke-virtual {v0}, [Lcom/android/calendar/OverlayFragment$OverlayBackground;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/OverlayFragment$OverlayBackground;

    return-object v0
.end method


# virtual methods
.method public getBackground()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->mBackground:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->mHeight:I

    return v0
.end method

.method public setToCard(Lcom/android/calendar/OverlayFragment;)Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 5

    .prologue
    .line 283
    sget-object v0, Lcom/android/calendar/OverlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "fragment switched from %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/calendar/OverlayFragment;->mOverlayBackground:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 284
    invoke-virtual {v4}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 283
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 285
    invoke-virtual {p1}, Lcom/android/calendar/OverlayFragment;->getOverlayView()Landroid/view/View;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_0

    .line 287
    iget v1, p0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->mTopPadding:I

    iget v2, p0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->mBackground:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/calendar/OverlayFragment;->adjustMarginForShadow(Landroid/view/View;II)V

    .line 288
    iget v1, p0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->mGravity:I

    iget v2, p0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->mHeight:I

    invoke-virtual {p1, v1, v2}, Lcom/android/calendar/OverlayFragment;->adjustViewLayout(II)V

    .line 289
    iget v1, p0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->mBackground:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 290
    invoke-virtual {p1, p0}, Lcom/android/calendar/OverlayFragment;->onBackgroundChanged(Lcom/android/calendar/OverlayFragment$OverlayBackground;)V

    .line 291
    iput-object p0, p1, Lcom/android/calendar/OverlayFragment;->mOverlayBackground:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 293
    :cond_0
    return-object p0
.end method

.method public startRectAnimation(Lcom/android/calendar/OverlayFragment;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 305
    sget-object v0, Lcom/android/calendar/OverlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "fragment switched to animation using %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 307
    if-eqz p2, :cond_0

    .line 308
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/calendar/OverlayFragment;->getOverlayContentFrame(Landroid/graphics/Rect;)V

    .line 310
    invoke-virtual {p1}, Lcom/android/calendar/OverlayFragment;->getOverlayView()Landroid/view/View;

    move-result-object v0

    .line 313
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x106000d

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 316
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 317
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 316
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    return-void

    .line 307
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method
