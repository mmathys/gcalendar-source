.class Lcom/android/calendar/calendarlist/DrawerSyncUIManager$3;
.super Ljava/lang/Object;
.source "DrawerSyncUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->showToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

.field final synthetic val$textId:I


# direct methods
.method constructor <init>(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;I)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$3;->this$0:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    iput p2, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$3;->val$textId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$3;->this$0:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    # getter for: Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;
    invoke-static {v0}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->access$300(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;)Lcom/android/calendar/calendarlist/DrawerListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$3;->val$textId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    return-void
.end method
