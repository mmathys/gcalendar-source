.class final Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;
.super Ljava/lang/Object;
.source "LayoutDirectionAwareViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/LayoutDirectionAwareViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DirectionAwareOnPageChangeListener"
.end annotation


# instance fields
.field private final directionUnawareListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field final synthetic this$0:Lcom/android/calendar/LayoutDirectionAwareViewPager;


# direct methods
.method public constructor <init>(Lcom/android/calendar/LayoutDirectionAwareViewPager;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;->this$0:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;->directionUnawareListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 163
    return-void
.end method

.method private getDirectionAwarePositionOffset(F)F
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;->this$0:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    # getter for: Lcom/android/calendar/LayoutDirectionAwareViewPager;->mUsesRtl:Z
    invoke-static {v0}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->access$400(Lcom/android/calendar/LayoutDirectionAwareViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    neg-float p1, p1

    .line 184
    :cond_0
    return p1
.end method

.method private getDirectionAwarePositionOffsetPixels(I)I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;->this$0:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    # getter for: Lcom/android/calendar/LayoutDirectionAwareViewPager;->mUsesRtl:Z
    invoke-static {v0}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->access$400(Lcom/android/calendar/LayoutDirectionAwareViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    neg-int p1, p1

    .line 190
    :cond_0
    return p1
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;->directionUnawareListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 181
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;->directionUnawareListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v1, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;->this$0:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    .line 168
    # invokes: Lcom/android/calendar/LayoutDirectionAwareViewPager;->getDirectionAwarePosition(I)I
    invoke-static {v1, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->access$300(Lcom/android/calendar/LayoutDirectionAwareViewPager;I)I

    move-result v1

    .line 169
    invoke-direct {p0, p2}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;->getDirectionAwarePositionOffset(F)F

    move-result v2

    .line 170
    invoke-direct {p0, p3}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;->getDirectionAwarePositionOffsetPixels(I)I

    move-result v3

    .line 167
    invoke-interface {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 171
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;->directionUnawareListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v1, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;->this$0:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    # invokes: Lcom/android/calendar/LayoutDirectionAwareViewPager;->getDirectionAwarePosition(I)I
    invoke-static {v1, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->access$300(Lcom/android/calendar/LayoutDirectionAwareViewPager;I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 176
    return-void
.end method
