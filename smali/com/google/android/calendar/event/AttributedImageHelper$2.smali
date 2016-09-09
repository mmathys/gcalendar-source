.class final Lcom/google/android/calendar/event/AttributedImageHelper$2;
.super Ljava/lang/Object;
.source "AttributedImageHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/AttributedImageHelper;->enableAttribution(Landroid/view/ViewGroup;Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$attribute:Landroid/widget/TextView;

.field final synthetic val$titleParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/google/android/calendar/event/AttributedImageHelper$2;->val$attribute:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/calendar/event/AttributedImageHelper$2;->val$titleParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 526
    iget-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$2;->val$attribute:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$2;->val$titleParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 529
    iget-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$2;->val$attribute:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$2;->val$titleParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 533
    iget-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$2;->val$attribute:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
