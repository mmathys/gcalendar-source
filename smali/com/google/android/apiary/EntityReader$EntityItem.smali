.class public Lcom/google/android/apiary/EntityReader$EntityItem;
.super Ljava/lang/Object;
.source "EntityReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apiary/EntityReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntityItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final entity:Landroid/content/Entity;

.field public final entry:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Entity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/Entity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/google/android/apiary/EntityReader$EntityItem;->entry:Ljava/lang/Object;

    .line 188
    iput-object p2, p0, Lcom/google/android/apiary/EntityReader$EntityItem;->entity:Landroid/content/Entity;

    .line 189
    return-void
.end method
