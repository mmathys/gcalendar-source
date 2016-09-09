.class public abstract Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/ViewPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field protected mDataFactory:Lcom/android/calendar/timely/DataFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 267
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setDataFactory(Lcom/android/calendar/timely/DataFactory;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    .line 263
    return-void
.end method

.method public updateVisibleViews()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method
