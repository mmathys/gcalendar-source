.class final Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;
.super Ljava/lang/Object;
.source "TimelyAccountPhotoFactory.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OwnerAvatarRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/people/Images$LoadImageResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final avatarSize:I

.field public final pageId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;

.field public final view:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->this$0:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->view:Landroid/widget/ImageView;

    .line 60
    iput-object p3, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->accountName:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->pageId:Ljava/lang/String;

    .line 62
    iput p5, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->avatarSize:I

    .line 63
    return-void
.end method


# virtual methods
.method public load()V
    .locals 6

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/gms/people/People;->ImageApi:Lcom/google/android/gms/people/Images;

    iget-object v1, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->this$0:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;

    # getter for: Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v1}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->access$000(Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->pageId:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->avatarSize:I

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/people/Images;->loadOwnerAvatar(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 72
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lcom/google/android/gms/people/Images$LoadImageResult;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->onResult(Lcom/google/android/gms/people/Images$LoadImageResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/people/Images$LoadImageResult;)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;->this$0:Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;

    invoke-interface {p1}, Lcom/google/android/gms/people/Images$LoadImageResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 77
    invoke-interface {p1}, Lcom/google/android/gms/people/Images$LoadImageResult;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;->onImageLoaded(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory$OwnerAvatarRequest;)V

    .line 78
    return-void
.end method
