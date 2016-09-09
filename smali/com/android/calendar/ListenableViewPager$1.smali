.class Lcom/android/calendar/ListenableViewPager$1;
.super Ljava/lang/Object;
.source "ListenableViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ListenableViewPager;->initializeListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ListenableViewPager;


# direct methods
.method constructor <init>(Lcom/android/calendar/ListenableViewPager;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/calendar/ListenableViewPager$1;->this$0:Lcom/android/calendar/ListenableViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/calendar/ListenableViewPager$1;->this$0:Lcom/android/calendar/ListenableViewPager;

    iget-object v0, v0, Lcom/android/calendar/ListenableViewPager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 87
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/ListenableViewPager$1;->this$0:Lcom/android/calendar/ListenableViewPager;

    iget-object v0, v0, Lcom/android/calendar/ListenableViewPager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 73
    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/calendar/ListenableViewPager$1;->this$0:Lcom/android/calendar/ListenableViewPager;

    iget-object v0, v0, Lcom/android/calendar/ListenableViewPager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 80
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method
