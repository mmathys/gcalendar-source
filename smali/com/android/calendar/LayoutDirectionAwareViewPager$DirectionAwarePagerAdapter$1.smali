.class Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter$1;
.super Landroid/database/DataSetObserver;
.source "LayoutDirectionAwareViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;-><init>(Landroid/support/v4/view/PagerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter$1;->this$0:Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter$1;->this$0:Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->notifyDataSetChanged()V

    .line 210
    return-void
.end method
