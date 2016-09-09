.class public Lcom/android/calendar/ListenableViewPager;
.super Lcom/android/calendar/LayoutDirectionAwareViewPager;
.source "ListenableViewPager.java"


# instance fields
.field mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/LayoutDirectionAwareViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private initializeListeners()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/ListenableViewPager;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ListenableViewPager;->mListeners:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/android/calendar/ListenableViewPager$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/ListenableViewPager$1;-><init>(Lcom/android/calendar/ListenableViewPager;)V

    invoke-super {p0, v0}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/calendar/ListenableViewPager;->initializeListeners()V

    .line 53
    iget-object v0, p0, Lcom/android/calendar/ListenableViewPager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ListenableViewPager supports addOnPageChangeListener instead of setOnPageChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
