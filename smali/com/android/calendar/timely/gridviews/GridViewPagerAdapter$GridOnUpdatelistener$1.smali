.class Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener$1;
.super Ljava/lang/Object;
.source "GridViewPagerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;

.field final synthetic val$data:Lcom/android/calendar/timely/MonthData;

.field final synthetic val$forceShow:Z

.field final synthetic val$julianDay:I


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener$1;->this$0:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;

    iput-object p2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener$1;->val$data:Lcom/android/calendar/timely/MonthData;

    iput p3, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener$1;->val$julianDay:I

    iput-boolean p4, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener$1;->val$forceShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener$1;->this$0:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener$1;->val$data:Lcom/android/calendar/timely/MonthData;

    iget v2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener$1;->val$julianDay:I

    iget-boolean v3, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener$1;->val$forceShow:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V

    .line 410
    return-void
.end method
