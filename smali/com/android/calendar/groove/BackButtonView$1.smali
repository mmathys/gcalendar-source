.class Lcom/android/calendar/groove/BackButtonView$1;
.super Ljava/lang/Object;
.source "BackButtonView.java"

# interfaces
.implements Lcom/android/calendar/groove/AnimatorHelper$FadeOutFadeInAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/BackButtonView;->setTheme(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/BackButtonView;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/BackButtonView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/calendar/groove/BackButtonView$1;->this$0:Lcom/android/calendar/groove/BackButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fadeOutAnimationEnd()V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/calendar/groove/BackButtonView$1;->this$0:Lcom/android/calendar/groove/BackButtonView;

    iget-object v1, p0, Lcom/android/calendar/groove/BackButtonView$1;->this$0:Lcom/android/calendar/groove/BackButtonView;

    invoke-virtual {v1}, Lcom/android/calendar/groove/BackButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/groove/BackButtonView$1;->this$0:Lcom/android/calendar/groove/BackButtonView;

    # getter for: Lcom/android/calendar/groove/BackButtonView;->mIcon:I
    invoke-static {v2}, Lcom/android/calendar/groove/BackButtonView;->access$000(Lcom/android/calendar/groove/BackButtonView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/groove/BackButtonView$1;->this$0:Lcom/android/calendar/groove/BackButtonView;

    # getter for: Lcom/android/calendar/groove/BackButtonView;->mColorTheme:I
    invoke-static {v3}, Lcom/android/calendar/groove/BackButtonView;->access$100(Lcom/android/calendar/groove/BackButtonView;)I

    move-result v3

    # invokes: Lcom/android/calendar/groove/BackButtonView;->getDrawableResId(II)I
    invoke-static {v2, v3}, Lcom/android/calendar/groove/BackButtonView;->access$200(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/BackButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-void
.end method
