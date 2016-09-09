.class Lcom/android/calendar/timely/SyncOffNotificationsManager$1;
.super Ljava/lang/Object;
.source "SyncOffNotificationsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/SyncOffNotificationsManager;->onSyncCompleted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/SyncOffNotificationsManager;

.field final synthetic val$toastTextId:I


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/SyncOffNotificationsManager;I)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager$1;->this$0:Lcom/android/calendar/timely/SyncOffNotificationsManager;

    iput p2, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager$1;->val$toastTextId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager$1;->this$0:Lcom/android/calendar/timely/SyncOffNotificationsManager;

    # getter for: Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->access$000(Lcom/android/calendar/timely/SyncOffNotificationsManager;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager$1;->val$toastTextId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 279
    return-void
.end method
