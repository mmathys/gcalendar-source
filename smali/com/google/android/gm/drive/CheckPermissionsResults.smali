.class public Lcom/google/android/gm/drive/CheckPermissionsResults;
.super Ljava/lang/Object;
.source "CheckPermissionsResults.java"


# instance fields
.field public final fixabilitySummary:Ljava/lang/String;

.field public final potentialFixes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/gm/drive/CheckPermissionsResults;->fixabilitySummary:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/google/android/gm/drive/CheckPermissionsResults;->potentialFixes:Ljava/util/ArrayList;

    .line 18
    return-void
.end method
