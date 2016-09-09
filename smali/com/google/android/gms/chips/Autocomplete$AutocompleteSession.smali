.class public interface abstract Lcom/google/android/gms/chips/Autocomplete$AutocompleteSession;
.super Ljava/lang/Object;
.source "Autocomplete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/chips/Autocomplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutocompleteSession"
.end annotation


# virtual methods
.method public abstract loadPrimaryPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/chips/Autocomplete$Person;Lcom/google/android/gms/chips/Autocomplete$LoadPhotoOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/chips/Autocomplete$Person;",
            "Lcom/google/android/gms/chips/Autocomplete$LoadPhotoOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/chips/Autocomplete$LoadPhotoResult;",
            ">;"
        }
    .end annotation
.end method
