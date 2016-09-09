.class public Lcom/google/android/gm/drive/CheckPermissionProgressFragment;
.super Landroid/app/DialogFragment;
.source "CheckPermissionProgressFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/DialogFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gm/drive/CheckPermissionsResults;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAttachmentsEditSegment:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

.field private final mHandler:Landroid/os/Handler;

.field private mNumFiles:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->mHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/drive/CheckPermissionProgressFragment;)Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->mAttachmentsEditSegment:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/drive/CheckPermissionProgressFragment;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->mNumFiles:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/drive/CheckPermissionProgressFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/gm/drive/CheckPermissionProgressFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gm/drive/CheckPermissionProgressFragment;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;

    invoke-direct {v0}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 45
    const-string v2, "account"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "recipients"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 47
    const-string v2, "fileIds"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 57
    sget v1, Lcom/android/calendar/R$string;->sending:I

    invoke-virtual {p0, v1}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 60
    const-string v2, "fileIds"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->mNumFiles:I

    .line 61
    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->mAccountName:Ljava/lang/String;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v3, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 73
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v3, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/drive/CheckPermissionsResults;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/gm/drive/CheckPermissionsLoader;

    invoke-virtual {p0}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/gm/drive/CheckPermissionsLoader;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/drive/CheckPermissionsResults;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/drive/CheckPermissionsResults;",
            ">;",
            "Lcom/google/android/gm/drive/CheckPermissionsResults;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;

    const-string v2, "dismissCheckPermissions"

    invoke-direct {v1, p0, v2, p0, p2}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment$1;-><init>(Lcom/google/android/gm/drive/CheckPermissionProgressFragment;Ljava/lang/String;Landroid/app/Fragment;Lcom/google/android/gm/drive/CheckPermissionsResults;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p2, Lcom/google/android/gm/drive/CheckPermissionsResults;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/drive/CheckPermissionsResults;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/drive/CheckPermissionsResults;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    return-void
.end method

.method public setAttachmentsEditSegment(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->mAttachmentsEditSegment:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    .line 78
    return-void
.end method
