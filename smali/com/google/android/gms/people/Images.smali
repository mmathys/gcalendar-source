.class public interface abstract Lcom/google/android/gms/people/Images;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/people/Images$1;,
        Lcom/google/android/gms/people/Images$LoadImageOptions;,
        Lcom/google/android/gms/people/Images$LoadImageResult;,
        Lcom/google/android/gms/people/Images$SetAvatarResult;
    }
.end annotation


# virtual methods
.method public abstract loadByReference(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/people/model/AvatarReference;",
            "Lcom/google/android/gms/people/Images$LoadImageOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadOwnerAvatar(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;"
        }
    .end annotation
.end method
