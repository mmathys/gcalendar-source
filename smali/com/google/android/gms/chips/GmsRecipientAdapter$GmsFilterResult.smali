.class Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;
.super Ljava/lang/Object;
.source "GmsRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/chips/GmsRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GmsFilterResult"
.end annotation


# instance fields
.field public final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final existingDestinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final paramsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/chips/GmsRecipientAdapter;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;->this$0:Lcom/google/android/gms/chips/GmsRecipientAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;->entries:Ljava/util/List;

    .line 223
    iput-object p3, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;->existingDestinations:Ljava/util/Set;

    .line 224
    iput-object p4, p0, Lcom/google/android/gms/chips/GmsRecipientAdapter$GmsFilterResult;->paramsList:Ljava/util/List;

    .line 225
    return-void
.end method
