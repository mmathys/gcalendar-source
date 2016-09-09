.class Lcom/android/calendar/calendarlist/DrawerSyncUIManager$2;
.super Ljava/lang/Object;
.source "DrawerSyncUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->updateDrawerOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;


# direct methods
.method constructor <init>(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$2;->this$0:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$2;->this$0:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    # getter for: Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;
    invoke-static {v0}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->access$300(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;)Lcom/android/calendar/calendarlist/DrawerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->updateItemList()V

    .line 129
    return-void
.end method
