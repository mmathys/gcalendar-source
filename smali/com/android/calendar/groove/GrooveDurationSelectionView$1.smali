.class Lcom/android/calendar/groove/GrooveDurationSelectionView$1;
.super Ljava/lang/Object;
.source "GrooveDurationSelectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveDurationSelectionView;->setClickListener(Landroid/widget/Button;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveDurationSelectionView;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveDurationSelectionView;I)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveDurationSelectionView$1;->this$0:Lcom/android/calendar/groove/GrooveDurationSelectionView;

    iput p2, p0, Lcom/android/calendar/groove/GrooveDurationSelectionView$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveDurationSelectionView$1;->this$0:Lcom/android/calendar/groove/GrooveDurationSelectionView;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveDurationSelectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/groove/GrooveDurationSelectionView$Listener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveDurationSelectionView$1;->this$0:Lcom/android/calendar/groove/GrooveDurationSelectionView;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveDurationSelectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/GrooveDurationSelectionView$Listener;

    iget v1, p0, Lcom/android/calendar/groove/GrooveDurationSelectionView$1;->val$duration:I

    invoke-interface {v0, v1}, Lcom/android/calendar/groove/GrooveDurationSelectionView$Listener;->onDurationSelectionComplete(I)V

    .line 43
    :cond_0
    return-void
.end method
