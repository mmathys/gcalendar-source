.class public interface abstract Lcom/google/android/gms/reminders/model/LocationGroup;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/reminders/model/LocationGroup;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCategoryInfo()Lcom/google/android/gms/reminders/model/CategoryInfo;
.end method

.method public abstract getChainInfo()Lcom/google/android/gms/reminders/model/ChainInfo;
.end method

.method public abstract getLocationQuery()Ljava/lang/String;
.end method

.method public abstract getLocationQueryType()Ljava/lang/Integer;
.end method
