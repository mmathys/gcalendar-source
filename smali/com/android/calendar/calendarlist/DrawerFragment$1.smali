.class Lcom/android/calendar/calendarlist/DrawerFragment$1;
.super Landroid/database/ContentObserver;
.source "DrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/calendarlist/DrawerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/calendarlist/DrawerFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/calendarlist/DrawerFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/calendar/calendarlist/DrawerFragment$1;->this$0:Lcom/android/calendar/calendarlist/DrawerFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/calendarlist/DrawerFragment$1;->onChange(ZLandroid/net/Uri;)V

    .line 81
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment$1;->this$0:Lcom/android/calendar/calendarlist/DrawerFragment;

    # getter for: Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;
    invoke-static {v0}, Lcom/android/calendar/calendarlist/DrawerFragment;->access$000(Lcom/android/calendar/calendarlist/DrawerFragment;)Lcom/android/calendar/calendarlist/DrawerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->updateItemList()V

    .line 86
    return-void
.end method
