.class public interface abstract Lcom/google/android/gms/reminders/model/Location;
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
        "Lcom/google/android/gms/reminders/model/Location;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAddress()Lcom/google/android/gms/reminders/model/Address;
.end method

.method public abstract getDisplayAddress()Ljava/lang/String;
.end method

.method public abstract getGeoFeatureId()Lcom/google/android/gms/reminders/model/FeatureIdProto;
.end method

.method public abstract getLat()Ljava/lang/Double;
.end method

.method public abstract getLng()Ljava/lang/Double;
.end method

.method public abstract getLocationAliasId()Ljava/lang/String;
.end method

.method public abstract getLocationType()Ljava/lang/Integer;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRadiusMeters()Ljava/lang/Integer;
.end method
