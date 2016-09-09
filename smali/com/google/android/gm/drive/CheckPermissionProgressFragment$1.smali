.class Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;
.super Lcom/android/mail/ui/FragmentRunnable;
.source "CheckPermissionProgressFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/drive/CheckPermissionsResults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/drive/CheckPermissionProgressFragment;

.field final synthetic val$data:Lcom/google/android/gm/drive/CheckPermissionsResults;


# direct methods
.method constructor <init>(Lcom/google/android/gm/drive/CheckPermissionProgressFragment;Ljava/lang/String;Landroid/app/Fragment;Lcom/google/android/gm/drive/CheckPermissionsResults;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;->this$0:Lcom/google/android/gm/drive/CheckPermissionProgressFragment;

    iput-object p4, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;->val$data:Lcom/google/android/gm/drive/CheckPermissionsResults;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public go()V
    .locals 6

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;->this$0:Lcom/google/android/gm/drive/CheckPermissionProgressFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->dismiss()V

    .line 94
    iget-object v0, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;->val$data:Lcom/google/android/gm/drive/CheckPermissionsResults;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;->this$0:Lcom/google/android/gm/drive/CheckPermissionProgressFragment;

    # getter for: Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->mAttachmentsEditSegment:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;
    invoke-static {v0}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->access$000(Lcom/google/android/gm/drive/CheckPermissionProgressFragment;)Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->onAclPromptsDone()V

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v0, "NONE_FIXABLE"

    iget-object v1, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;->val$data:Lcom/google/android/gm/drive/CheckPermissionsResults;

    iget-object v1, v1, Lcom/google/android/gm/drive/CheckPermissionsResults;->fixabilitySummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;->this$0:Lcom/google/android/gm/drive/CheckPermissionProgressFragment;

    # getter for: Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->mAttachmentsEditSegment:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;
    invoke-static {v0}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->access$000(Lcom/google/android/gm/drive/CheckPermissionProgressFragment;)Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;->this$0:Lcom/google/android/gm/drive/CheckPermissionProgressFragment;

    .line 98
    invoke-virtual {v1}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;->this$0:Lcom/google/android/gm/drive/CheckPermissionProgressFragment;

    # getter for: Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->mNumFiles:I
    invoke-static {v2}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->access$100(Lcom/google/android/gm/drive/CheckPermissionProgressFragment;)I

    move-result v2

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->showFilesNotSharedDialog(Landroid/app/FragmentManager;I)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;->this$0:Lcom/google/android/gm/drive/CheckPermissionProgressFragment;

    # getter for: Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->mAttachmentsEditSegment:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;
    invoke-static {v0}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->access$000(Lcom/google/android/gm/drive/CheckPermissionProgressFragment;)Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;->this$0:Lcom/google/android/gm/drive/CheckPermissionProgressFragment;

    invoke-virtual {v1}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;->val$data:Lcom/google/android/gm/drive/CheckPermissionsResults;

    iget-object v3, v3, Lcom/google/android/gm/drive/CheckPermissionsResults;->potentialFixes:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;->this$0:Lcom/google/android/gm/drive/CheckPermissionProgressFragment;

    .line 101
    # getter for: Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->mNumFiles:I
    invoke-static {v4}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->access$100(Lcom/google/android/gm/drive/CheckPermissionProgressFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;->this$0:Lcom/google/android/gm/drive/CheckPermissionProgressFragment;

    # getter for: Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->access$200(Lcom/google/android/gm/drive/CheckPermissionProgressFragment;)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->showFixPermissionsDialog(Landroid/app/FragmentManager;Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;ILjava/lang/String;)V

    goto :goto_0
.end method
