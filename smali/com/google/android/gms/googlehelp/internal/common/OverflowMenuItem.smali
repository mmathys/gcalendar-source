.class public final Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mId:I

.field final mIntent:Landroid/content/Intent;

.field final mVersionCode:I

.field final zzawl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/googlehelp/internal/common/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/googlehelp/internal/common/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;->mId:I

    iput-object p3, p0, Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;->zzawl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;-><init>(IILjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/googlehelp/internal/common/zzh;->zza(Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;Landroid/os/Parcel;I)V

    return-void
.end method
