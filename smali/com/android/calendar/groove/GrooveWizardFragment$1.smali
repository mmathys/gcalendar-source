.class final Lcom/android/calendar/groove/GrooveWizardFragment$1;
.super Landroid/view/ViewOutlineProvider;
.source "GrooveWizardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveWizardFragment;->configureOutlineProviderForElevationShadow(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$radius:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/android/calendar/groove/GrooveWizardFragment$1;->val$radius:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, p0, Lcom/android/calendar/groove/GrooveWizardFragment$1;->val$radius:I

    int-to-float v5, v0

    move-object v0, p2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 134
    :cond_0
    return-void
.end method
