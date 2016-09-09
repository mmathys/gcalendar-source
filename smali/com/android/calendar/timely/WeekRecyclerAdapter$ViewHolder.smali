.class public Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WeekRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/WeekRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

.field public final allDayScrollView:Landroid/widget/ScrollView;

.field public final dayScrollView:Lcom/android/calendar/timely/PagedScrollView;

.field public final daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

.field public final daysHeaders:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

.field private mFirstJulianDay:I

.field private mIsClean:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 273
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 275
    sget v0, Lcom/android/calendar/R$id;->week_days_scroll:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PagedScrollView;

    iput-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->dayScrollView:Lcom/android/calendar/timely/PagedScrollView;

    .line 277
    sget v0, Lcom/android/calendar/R$id;->week_all_day_content:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    iput-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    .line 279
    sget v0, Lcom/android/calendar/R$id;->week_header_labels:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    iput-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->daysHeaders:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    .line 281
    sget v0, Lcom/android/calendar/R$id;->week_all_day_scroll:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->allDayScrollView:Landroid/widget/ScrollView;

    .line 283
    sget v0, Lcom/android/calendar/R$id;->week_days_content:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridViewFrame;

    iput-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    .line 284
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->mFirstJulianDay:I

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->mIsClean:Z

    .line 294
    return-void
.end method

.method public getFirstJulianDay()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->mFirstJulianDay:I

    return v0
.end method

.method public init(I)V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->mIsClean:Z

    .line 288
    iput p1, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->mFirstJulianDay:I

    .line 289
    return-void
.end method

.method public isClean()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->mIsClean:Z

    return v0
.end method
