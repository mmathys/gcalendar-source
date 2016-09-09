.class public Lcom/android/bitmap/DecodeTask;
.super Landroid/os/AsyncTask;
.source "DecodeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bitmap/DecodeTask$DecodeOptions;,
        Lcom/android/bitmap/DecodeTask$DecodeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/bitmap/ReusableBitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mByteArray:[B

.field private final mCache:Lcom/android/bitmap/BitmapCache;

.field private final mDecodeCallback:Lcom/android/bitmap/DecodeTask$DecodeCallback;

.field private final mDecodeOpts:Lcom/android/bitmap/DecodeTask$DecodeOptions;

.field private final mFactory:Lcom/android/bitmap/RequestKey$FileDescriptorFactory;

.field private mInBitmap:Lcom/android/bitmap/ReusableBitmap;

.field private final mKey:Lcom/android/bitmap/RequestKey;

.field private final mOpts:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/bitmap/DecodeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bitmap/DecodeTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/DecodeTask$DecodeOptions;Lcom/android/bitmap/RequestKey$FileDescriptorFactory;[BLcom/android/bitmap/DecodeTask$DecodeCallback;Lcom/android/bitmap/BitmapCache;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    .line 59
    iput-object v1, p0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 60
    iput-object v1, p0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    .line 106
    iput-object p1, p0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    .line 107
    iput-object p2, p0, Lcom/android/bitmap/DecodeTask;->mDecodeOpts:Lcom/android/bitmap/DecodeTask$DecodeOptions;

    .line 108
    iput-object p3, p0, Lcom/android/bitmap/DecodeTask;->mFactory:Lcom/android/bitmap/RequestKey$FileDescriptorFactory;

    .line 109
    iput-object p4, p0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    .line 110
    iput-object p5, p0, Lcom/android/bitmap/DecodeTask;->mDecodeCallback:Lcom/android/bitmap/DecodeTask$DecodeCallback;

    .line 111
    iput-object p6, p0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    .line 112
    return-void
.end method

.method private decode(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 514
    if-eqz p1, :cond_0

    .line 515
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 521
    :goto_0
    return-object v0

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p2, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private reset(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    const-string v0, "create stream"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 497
    if-nez p1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v0}, Lcom/android/bitmap/RequestKey;->createInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 508
    :goto_0
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 509
    return-object p1

    .line 499
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 503
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_1
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v0}, Lcom/android/bitmap/RequestKey;->createInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bitmap/DecodeTask;->cancel(Z)Z

    .line 526
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 527
    return-void
.end method

.method public decode()Lcom/android/bitmap/ReusableBitmap;
    .locals 22

    .prologue
    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    const/4 v2, 0x0

    .line 486
    :cond_0
    :goto_0
    return-object v2

    .line 127
    :cond_1
    const/4 v15, 0x0

    .line 128
    const/4 v4, 0x0

    .line 129
    const/4 v3, 0x0

    .line 132
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mFactory:Lcom/android/bitmap/RequestKey$FileDescriptorFactory;

    if-eqz v2, :cond_6

    .line 133
    const-string v2, "create fd"

    invoke-static {v2}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mFactory:Lcom/android/bitmap/RequestKey$FileDescriptorFactory;

    invoke-interface {v2}, Lcom/android/bitmap/RequestKey$FileDescriptorFactory;->createFileDescriptor()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2e
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v4

    .line 135
    :try_start_1
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2e
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v14, v4

    .line 146
    :goto_1
    if-nez v14, :cond_10

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    if-nez v2, :cond_10

    const/4 v2, 0x1

    move/from16 v20, v2

    .line 148
    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_11

    const/4 v2, 0x1

    move v6, v2

    .line 151
    :goto_3
    if-eqz v6, :cond_2

    .line 152
    const-string v2, "poll for reusable bitmap"

    invoke-static {v2}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    invoke-interface {v2}, Lcom/android/bitmap/BitmapCache;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 154
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 157
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_30
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-result v2

    if-eqz v2, :cond_13

    .line 158
    const/4 v2, 0x0

    .line 454
    if-eqz v14, :cond_3

    .line 456
    :try_start_3
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    .line 460
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 462
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    .line 468
    :cond_4
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_5
    if-eqz v15, :cond_12

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto :goto_0

    .line 136
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    if-nez v2, :cond_7f

    .line 137
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bitmap/DecodeTask;->reset(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2e
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v3

    .line 138
    if-nez v3, :cond_b

    .line 139
    const/4 v2, 0x0

    .line 454
    if-eqz v4, :cond_7

    .line 456
    :try_start_6
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 460
    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    .line 462
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 468
    :cond_8
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_9

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_9
    if-eqz v15, :cond_a

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 478
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 141
    :cond_b
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2f
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result v2

    if-eqz v2, :cond_7f

    .line 142
    const/4 v2, 0x0

    .line 454
    if-eqz v4, :cond_c

    .line 456
    :try_start_9
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 460
    :cond_c
    :goto_8
    if-eqz v3, :cond_d

    .line 462
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 468
    :cond_d
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_e

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_e
    if-eqz v15, :cond_f

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 478
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 146
    :cond_10
    const/4 v2, 0x0

    move/from16 v20, v2

    goto/16 :goto_2

    .line 148
    :cond_11
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_3

    .line 478
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 161
    :cond_13
    :try_start_b
    const-string v2, "get bytesize"

    invoke-static {v2}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 163
    if-eqz v14, :cond_1a

    .line 164
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    .line 170
    :goto_a
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 172
    const-string v2, "get orientation"

    invoke-static {v2}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v2}, Lcom/android/bitmap/RequestKey;->hasOrientationExif()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 175
    if-eqz v14, :cond_1c

    .line 178
    const-string v2, "create orientation fd and stream"

    invoke-static {v2}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mFactory:Lcom/android/bitmap/RequestKey$FileDescriptorFactory;

    invoke-interface {v2}, Lcom/android/bitmap/RequestKey$FileDescriptorFactory;->createFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 180
    new-instance v13, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v13, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_30
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 181
    :try_start_c
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v3, v13

    .line 185
    :cond_14
    :goto_b
    :try_start_d
    invoke-static {v3, v4, v5}, Lcom/android/bitmap/util/Exif;->getOrientation(Ljava/io/InputStream;J)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-result v2

    .line 186
    if-nez v20, :cond_7e

    .line 189
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move/from16 v19, v2

    .line 196
    :goto_c
    if-eqz v19, :cond_15

    const/16 v2, 0xb4

    move/from16 v0, v19

    if-ne v0, v2, :cond_1e

    :cond_15
    const/4 v2, 0x1

    move/from16 v18, v2

    .line 197
    :goto_d
    :try_start_f
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 199
    if-eqz v19, :cond_16

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v2, :cond_16

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v2, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    .line 204
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 209
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-result v2

    if-eqz v2, :cond_20

    .line 210
    const/4 v2, 0x0

    .line 454
    if-eqz v14, :cond_17

    .line 456
    :try_start_10
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 460
    :cond_17
    :goto_e
    if-eqz v3, :cond_18

    .line 462
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 468
    :cond_18
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_19

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_19
    if-eqz v15, :cond_1f

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 165
    :cond_1a
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    if-eqz v2, :cond_1b

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    array-length v2, v2

    int-to-long v4, v2

    goto/16 :goto_a

    .line 168
    :cond_1b
    const-wide/16 v4, -0x1

    goto/16 :goto_a

    .line 182
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    if-eqz v2, :cond_14

    .line 183
    new-instance v13, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    invoke-direct {v13, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_30
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object v3, v13

    goto/16 :goto_b

    .line 190
    :catch_0
    move-exception v4

    move/from16 v19, v2

    .line 191
    goto :goto_c

    .line 194
    :cond_1d
    const/4 v2, 0x0

    move/from16 v19, v2

    goto/16 :goto_c

    .line 196
    :cond_1e
    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_d

    .line 478
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 213
    :cond_20
    if-eqz v20, :cond_7d

    .line 214
    :try_start_13
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bitmap/DecodeTask;->reset(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move-result-object v3

    .line 215
    if-nez v3, :cond_25

    .line 216
    const/4 v2, 0x0

    .line 454
    if-eqz v14, :cond_21

    .line 456
    :try_start_14
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e

    .line 460
    :cond_21
    :goto_10
    if-eqz v3, :cond_22

    .line 462
    :try_start_15
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f

    .line 468
    :cond_22
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_23

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_23
    if-eqz v15, :cond_24

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 478
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 218
    :cond_25
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_30
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    move-result v2

    if-eqz v2, :cond_2a

    .line 219
    const/4 v2, 0x0

    .line 454
    if-eqz v14, :cond_26

    .line 456
    :try_start_17
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    .line 460
    :cond_26
    :goto_12
    if-eqz v3, :cond_27

    .line 462
    :try_start_18
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    .line 468
    :cond_27
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_28

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_28
    if-eqz v15, :cond_29

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 478
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2a
    move-object v13, v3

    .line 223
    :goto_14
    :try_start_19
    const-string v2, "decodeBounds"

    invoke-static {v2}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 225
    if-eqz v14, :cond_2e

    .line 226
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 232
    :goto_15
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result v2

    if-eqz v2, :cond_38

    .line 235
    const/4 v2, 0x0

    .line 454
    if-eqz v14, :cond_2b

    .line 456
    :try_start_1a
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_12

    .line 460
    :cond_2b
    :goto_16
    if-eqz v13, :cond_2c

    .line 462
    :try_start_1b
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_13

    .line 468
    :cond_2c
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_2d
    if-eqz v15, :cond_37

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 227
    :cond_2e
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    if-eqz v2, :cond_32

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto :goto_15

    .line 451
    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v4, v14

    move-object v2, v15

    .line 452
    :goto_18
    :try_start_1d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    .line 454
    if-eqz v4, :cond_2f

    .line 456
    :try_start_1e
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_2a

    .line 460
    :cond_2f
    :goto_19
    if-eqz v13, :cond_30

    .line 462
    :try_start_1f
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_2b

    .line 468
    :cond_30
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_31

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v2}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_31
    if-eqz v2, :cond_7a

    .line 473
    invoke-virtual {v2}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 230
    :cond_32
    const/4 v2, 0x0

    :try_start_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v13, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto :goto_15

    .line 454
    :catchall_0
    move-exception v2

    :goto_1b
    if-eqz v14, :cond_33

    .line 456
    :try_start_21
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2c

    .line 460
    :cond_33
    :goto_1c
    if-eqz v13, :cond_34

    .line 462
    :try_start_22
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_2d

    .line 468
    :cond_34
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_35

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_35
    if-eqz v15, :cond_7b

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    .line 483
    :cond_36
    :goto_1e
    throw v2

    .line 478
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 240
    :cond_38
    if-eqz v18, :cond_3c

    .line 241
    :try_start_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 250
    :goto_1f
    int-to-float v4, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bitmap/DecodeTask;->mDecodeOpts:Lcom/android/bitmap/DecodeTask$DecodeOptions;

    iget v5, v5, Lcom/android/bitmap/DecodeTask$DecodeOptions;->destW:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bitmap/DecodeTask;->mDecodeOpts:Lcom/android/bitmap/DecodeTask$DecodeOptions;

    iget v7, v7, Lcom/android/bitmap/DecodeTask$DecodeOptions;->destH:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    .line 251
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 254
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bitmap/DecodeTask;->mDecodeOpts:Lcom/android/bitmap/DecodeTask$DecodeOptions;

    iget v5, v5, Lcom/android/bitmap/DecodeTask$DecodeOptions;->sampleSizeStrategy:I

    packed-switch v5, :pswitch_data_0

    .line 263
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v4, v4, v16

    add-double/2addr v4, v10

    double-to-int v4, v4

    int-to-double v4, v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .line 266
    :goto_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v7, 0x1

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 272
    if-eqz v6, :cond_44

    if-nez v19, :cond_44

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-nez v4, :cond_43

    .line 278
    const-string v4, "create reusable bitmap"

    invoke-static {v4}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 280
    :try_start_24
    new-instance v4, Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bitmap/DecodeTask;->mDecodeOpts:Lcom/android/bitmap/DecodeTask$DecodeOptions;

    iget v5, v5, Lcom/android/bitmap/DecodeTask$DecodeOptions;->destW:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bitmap/DecodeTask;->mDecodeOpts:Lcom/android/bitmap/DecodeTask$DecodeOptions;

    iget v6, v6, Lcom/android/bitmap/DecodeTask$DecodeOptions;->destH:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 281
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/bitmap/ReusableBitmap;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;
    :try_end_24
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24 .. :try_end_24} :catch_2
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 288
    :try_start_25
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    move-result v4

    if-eqz v4, :cond_43

    .line 291
    const/4 v2, 0x0

    .line 454
    if-eqz v14, :cond_39

    .line 456
    :try_start_26
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_16

    .line 460
    :cond_39
    :goto_21
    if-eqz v13, :cond_3a

    .line 462
    :try_start_27
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_17

    .line 468
    :cond_3a
    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_3b
    if-eqz v15, :cond_42

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 244
    :cond_3c
    :try_start_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto/16 :goto_1f

    .line 256
    :pswitch_0
    float-to-int v4, v4

    .line 257
    goto :goto_20

    .line 259
    :pswitch_1
    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 260
    goto/16 :goto_20

    .line 283
    :catch_2
    move-exception v2

    .line 284
    sget-object v3, Lcom/android/bitmap/DecodeTask;->TAG:Ljava/lang/String;

    const-string v4, "allocate new bitmap in decode thread failed: reason="

    .line 285
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    :goto_23
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_1
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 286
    const/4 v2, 0x0

    .line 454
    if-eqz v14, :cond_3d

    .line 456
    :try_start_29
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_14

    .line 460
    :cond_3d
    :goto_24
    if-eqz v13, :cond_3e

    .line 462
    :try_start_2a
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_15

    .line 468
    :cond_3e
    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_3f
    if-eqz v15, :cond_41

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 285
    :cond_40
    :try_start_2b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_1
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    goto :goto_23

    .line 478
    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 478
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 305
    :cond_43
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    iget-object v5, v5, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 308
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_1
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    move-result v4

    if-eqz v4, :cond_49

    .line 309
    const/4 v2, 0x0

    .line 454
    if-eqz v14, :cond_45

    .line 456
    :try_start_2d
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_18

    .line 460
    :cond_45
    :goto_26
    if-eqz v13, :cond_46

    .line 462
    :try_start_2e
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_19

    .line 468
    :cond_46
    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_47

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_47
    if-eqz v15, :cond_48

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 478
    :cond_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 312
    :cond_49
    if-eqz v20, :cond_53

    .line 313
    :try_start_2f
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/bitmap/DecodeTask;->reset(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_1
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    move-result-object v13

    .line 314
    if-nez v13, :cond_4e

    .line 315
    const/4 v2, 0x0

    .line 454
    if-eqz v14, :cond_4a

    .line 456
    :try_start_30
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_1a

    .line 460
    :cond_4a
    :goto_28
    if-eqz v13, :cond_4b

    .line 462
    :try_start_31
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_1b

    .line 468
    :cond_4b
    :goto_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_4c
    if-eqz v15, :cond_4d

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 478
    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 317
    :cond_4e
    :try_start_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_1
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    move-result v4

    if-eqz v4, :cond_53

    .line 318
    const/4 v2, 0x0

    .line 454
    if-eqz v14, :cond_4f

    .line 456
    :try_start_33
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_1c

    .line 460
    :cond_4f
    :goto_2a
    if-eqz v13, :cond_50

    .line 462
    :try_start_34
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_1d

    .line 468
    :cond_50
    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_51

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_51
    if-eqz v15, :cond_52

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 478
    :cond_52
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 323
    :cond_53
    const/16 v16, 0x0

    .line 324
    :try_start_35
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    .line 327
    :try_start_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x18

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "decodeCropped"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 332
    if-eqz v14, :cond_57

    .line 334
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v4

    move-object/from16 v17, v4

    .line 343
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 344
    const/4 v3, 0x0

    .line 368
    :goto_2d
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_3
    .catchall {:try_start_36 .. :try_end_36} :catchall_1

    .line 387
    :try_start_37
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 390
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_1
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    move-result v2

    if-eqz v2, :cond_66

    .line 391
    const/4 v2, 0x0

    .line 454
    if-eqz v14, :cond_54

    .line 456
    :try_start_38
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_22

    .line 460
    :cond_54
    :goto_2f
    if-eqz v13, :cond_55

    .line 462
    :try_start_39
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_23

    .line 468
    :cond_55
    :goto_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_56

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_56
    if-eqz v15, :cond_65

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 335
    :cond_57
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    if-eqz v4, :cond_58

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bitmap/DecodeTask;->mByteArray:[B

    array-length v6, v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_2c

    .line 339
    :cond_58
    const/4 v4, 0x1

    invoke-static {v13, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_2c

    .line 349
    :cond_59
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mDecodeOpts:Lcom/android/bitmap/DecodeTask$DecodeOptions;

    iget v4, v4, Lcom/android/bitmap/DecodeTask$DecodeOptions;->destW:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bitmap/DecodeTask;->mDecodeOpts:Lcom/android/bitmap/DecodeTask$DecodeOptions;

    iget v5, v5, Lcom/android/bitmap/DecodeTask$DecodeOptions;->destH:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bitmap/DecodeTask;->mDecodeOpts:Lcom/android/bitmap/DecodeTask$DecodeOptions;

    iget v6, v6, Lcom/android/bitmap/DecodeTask$DecodeOptions;->destH:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bitmap/DecodeTask;->mDecodeOpts:Lcom/android/bitmap/DecodeTask$DecodeOptions;

    iget v8, v8, Lcom/android/bitmap/DecodeTask$DecodeOptions;->horizontalCenter:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bitmap/DecodeTask;->mDecodeOpts:Lcom/android/bitmap/DecodeTask$DecodeOptions;

    iget v9, v9, Lcom/android/bitmap/DecodeTask$DecodeOptions;->verticalCenter:F

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v12}, Lcom/android/bitmap/util/BitmapUtils;->calculateCroppedSrcRect(IIIIIIFFZFLandroid/graphics/Rect;)V

    .line 363
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move/from16 v0, v19

    invoke-static {v0, v4, v12}, Lcom/android/bitmap/util/RectUtils;->rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_3
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1

    move-result-object v3

    goto/16 :goto_2d

    .line 373
    :catch_3
    move-exception v2

    .line 375
    if-eqz v20, :cond_63

    .line 376
    :try_start_3b
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/bitmap/DecodeTask;->reset(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1

    move-result-object v3

    .line 377
    if-nez v3, :cond_5e

    .line 378
    const/4 v2, 0x0

    .line 387
    :try_start_3c
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_30
    .catchall {:try_start_3c .. :try_end_3c} :catchall_6

    .line 454
    if-eqz v14, :cond_5a

    .line 456
    :try_start_3d
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_1e

    .line 460
    :cond_5a
    :goto_31
    if-eqz v3, :cond_5b

    .line 462
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_1f

    .line 468
    :cond_5b
    :goto_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_5c
    if-eqz v15, :cond_5d

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 478
    :cond_5d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 380
    :cond_5e
    :try_start_3f
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_c

    move-result v4

    if-eqz v4, :cond_64

    .line 381
    const/4 v2, 0x0

    .line 387
    :try_start_40
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_30
    .catchall {:try_start_40 .. :try_end_40} :catchall_6

    .line 454
    if-eqz v14, :cond_5f

    .line 456
    :try_start_41
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_20

    .line 460
    :cond_5f
    :goto_33
    if-eqz v3, :cond_60

    .line 462
    :try_start_42
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_21

    .line 468
    :cond_60
    :goto_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_61

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_61
    if-eqz v15, :cond_62

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 478
    :cond_62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_63
    move-object v3, v13

    .line 385
    :cond_64
    :try_start_43
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_c

    .line 387
    :try_start_44
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    move-object v13, v3

    move-object/from16 v3, v16

    .line 388
    goto/16 :goto_2e

    .line 387
    :catchall_1
    move-exception v2

    move-object v3, v13

    :goto_35
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    throw v2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_4
    .catchall {:try_start_44 .. :try_end_44} :catchall_7

    .line 451
    :catch_4
    move-exception v2

    move-object v13, v3

    move-object v4, v14

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_18

    .line 478
    :cond_65
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 396
    :cond_66
    if-nez v3, :cond_6c

    :try_start_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_1
    .catchall {:try_start_45 .. :try_end_45} :catchall_0

    move-result v2

    if-nez v2, :cond_6c

    .line 398
    :try_start_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x11

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "decode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v2, :cond_67

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v2, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    .line 402
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 405
    :cond_67
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/bitmap/DecodeTask;->decode(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_46} :catch_5
    .catchall {:try_start_46 .. :try_end_46} :catchall_2

    move-result-object v2

    .line 416
    :try_start_47
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 419
    :goto_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_1
    .catchall {:try_start_47 .. :try_end_47} :catchall_0

    move-result v3

    if-eqz v3, :cond_6d

    .line 420
    const/4 v2, 0x0

    .line 454
    if-eqz v14, :cond_68

    .line 456
    :try_start_48
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_48} :catch_24

    .line 460
    :cond_68
    :goto_37
    if-eqz v13, :cond_69

    .line 462
    :try_start_49
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_25

    .line 468
    :cond_69
    :goto_38
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_6a

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_6a
    if-eqz v15, :cond_6b

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 406
    :catch_5
    move-exception v2

    .line 407
    :try_start_4a
    sget-object v4, Lcom/android/bitmap/DecodeTask;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x27

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "decode failed: reason=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\' ss="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_7c

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 413
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/bitmap/DecodeTask;->decode(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_2

    move-result-object v2

    .line 416
    :goto_39
    :try_start_4b
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_36

    :catchall_2
    move-exception v2

    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    throw v2
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_1
    .catchall {:try_start_4b .. :try_end_4b} :catchall_0

    .line 478
    :cond_6b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6c
    move-object v2, v3

    .line 424
    :cond_6d
    if-nez v2, :cond_72

    .line 425
    const/4 v2, 0x0

    .line 454
    if-eqz v14, :cond_6e

    .line 456
    :try_start_4c
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4c} :catch_26

    .line 460
    :cond_6e
    :goto_3a
    if-eqz v13, :cond_6f

    .line 462
    :try_start_4d
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4d} :catch_27

    .line 468
    :cond_6f
    :goto_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_70

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v15}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_70
    if-eqz v15, :cond_71

    .line 473
    invoke-virtual {v15}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 478
    :cond_71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 428
    :cond_72
    :try_start_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_77

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_1
    .catchall {:try_start_4e .. :try_end_4e} :catchall_0

    .line 431
    :try_start_4f
    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_76

    .line 432
    iget v2, v12, Landroid/graphics/Rect;->right:I

    iget v4, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/android/bitmap/ReusableBitmap;->setLogicalWidth(I)V

    .line 433
    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/android/bitmap/ReusableBitmap;->setLogicalHeight(I)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_31
    .catchall {:try_start_4f .. :try_end_4f} :catchall_8

    move-object v2, v3

    .line 450
    :goto_3c
    :try_start_50
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/bitmap/ReusableBitmap;->setOrientation(I)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_33
    .catchall {:try_start_50 .. :try_end_50} :catchall_a

    .line 454
    if-eqz v14, :cond_73

    .line 456
    :try_start_51
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_51} :catch_28

    .line 460
    :cond_73
    :goto_3d
    if-eqz v13, :cond_74

    .line 462
    :try_start_52
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_52} :catch_29

    .line 468
    :cond_74
    :goto_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_75

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v3, v4, v2}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_75
    if-eqz v2, :cond_79

    .line 473
    invoke-virtual {v2}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    goto/16 :goto_0

    .line 436
    :cond_76
    :try_start_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v3, v2}, Lcom/android/bitmap/ReusableBitmap;->setLogicalWidth(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v2}, Lcom/android/bitmap/ReusableBitmap;->setLogicalHeight(I)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_31
    .catchall {:try_start_53 .. :try_end_53} :catchall_8

    move-object v2, v3

    goto :goto_3c

    .line 441
    :cond_77
    :try_start_54
    new-instance v3, Lcom/android/bitmap/ReusableBitmap;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/android/bitmap/ReusableBitmap;-><init>(Landroid/graphics/Bitmap;Z)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_1
    .catchall {:try_start_54 .. :try_end_54} :catchall_0

    .line 442
    if-eqz v18, :cond_78

    .line 443
    :try_start_55
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/bitmap/ReusableBitmap;->setLogicalWidth(I)V

    .line 444
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/bitmap/ReusableBitmap;->setLogicalHeight(I)V

    move-object v2, v3

    goto :goto_3c

    .line 446
    :cond_78
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/bitmap/ReusableBitmap;->setLogicalWidth(I)V

    .line 447
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/bitmap/ReusableBitmap;->setLogicalHeight(I)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_32
    .catchall {:try_start_55 .. :try_end_55} :catchall_9

    move-object v2, v3

    goto :goto_3c

    .line 478
    :cond_79
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 478
    :cond_7a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 478
    :cond_7b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v3, :cond_36

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-interface {v3, v4}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 457
    :catch_6
    move-exception v4

    goto/16 :goto_6

    .line 463
    :catch_7
    move-exception v3

    goto/16 :goto_7

    .line 457
    :catch_8
    move-exception v4

    goto/16 :goto_8

    .line 463
    :catch_9
    move-exception v3

    goto/16 :goto_9

    .line 457
    :catch_a
    move-exception v4

    goto/16 :goto_4

    .line 463
    :catch_b
    move-exception v3

    goto/16 :goto_5

    .line 457
    :catch_c
    move-exception v4

    goto/16 :goto_e

    .line 463
    :catch_d
    move-exception v3

    goto/16 :goto_f

    .line 457
    :catch_e
    move-exception v4

    goto/16 :goto_10

    .line 463
    :catch_f
    move-exception v3

    goto/16 :goto_11

    .line 457
    :catch_10
    move-exception v4

    goto/16 :goto_12

    .line 463
    :catch_11
    move-exception v3

    goto/16 :goto_13

    .line 457
    :catch_12
    move-exception v3

    goto/16 :goto_16

    .line 463
    :catch_13
    move-exception v3

    goto/16 :goto_17

    .line 457
    :catch_14
    move-exception v3

    goto/16 :goto_24

    .line 463
    :catch_15
    move-exception v3

    goto/16 :goto_25

    .line 457
    :catch_16
    move-exception v3

    goto/16 :goto_21

    .line 463
    :catch_17
    move-exception v3

    goto/16 :goto_22

    .line 457
    :catch_18
    move-exception v3

    goto/16 :goto_26

    .line 463
    :catch_19
    move-exception v3

    goto/16 :goto_27

    .line 457
    :catch_1a
    move-exception v3

    goto/16 :goto_28

    .line 463
    :catch_1b
    move-exception v3

    goto/16 :goto_29

    .line 457
    :catch_1c
    move-exception v3

    goto/16 :goto_2a

    .line 463
    :catch_1d
    move-exception v3

    goto/16 :goto_2b

    .line 457
    :catch_1e
    move-exception v4

    goto/16 :goto_31

    .line 463
    :catch_1f
    move-exception v3

    goto/16 :goto_32

    .line 457
    :catch_20
    move-exception v4

    goto/16 :goto_33

    .line 463
    :catch_21
    move-exception v3

    goto/16 :goto_34

    .line 457
    :catch_22
    move-exception v3

    goto/16 :goto_2f

    .line 463
    :catch_23
    move-exception v3

    goto/16 :goto_30

    .line 457
    :catch_24
    move-exception v3

    goto/16 :goto_37

    .line 463
    :catch_25
    move-exception v3

    goto/16 :goto_38

    .line 457
    :catch_26
    move-exception v3

    goto/16 :goto_3a

    .line 463
    :catch_27
    move-exception v3

    goto/16 :goto_3b

    .line 457
    :catch_28
    move-exception v3

    goto/16 :goto_3d

    .line 463
    :catch_29
    move-exception v3

    goto/16 :goto_3e

    .line 457
    :catch_2a
    move-exception v3

    goto/16 :goto_19

    .line 463
    :catch_2b
    move-exception v3

    goto/16 :goto_1a

    .line 457
    :catch_2c
    move-exception v3

    goto/16 :goto_1c

    .line 463
    :catch_2d
    move-exception v3

    goto/16 :goto_1d

    .line 454
    :catchall_3
    move-exception v2

    move-object v13, v3

    move-object v14, v4

    goto/16 :goto_1b

    :catchall_4
    move-exception v2

    move-object v13, v3

    move-object v14, v4

    goto/16 :goto_1b

    :catchall_5
    move-exception v2

    move-object v13, v3

    move-object v14, v4

    goto/16 :goto_1b

    :catchall_6
    move-exception v2

    move-object v13, v3

    goto/16 :goto_1b

    :catchall_7
    move-exception v2

    move-object v13, v3

    goto/16 :goto_1b

    :catchall_8
    move-exception v2

    move-object v15, v3

    goto/16 :goto_1b

    :catchall_9
    move-exception v2

    move-object v15, v3

    goto/16 :goto_1b

    :catchall_a
    move-exception v3

    move-object v15, v2

    move-object v2, v3

    goto/16 :goto_1b

    :catchall_b
    move-exception v3

    move-object v14, v4

    move-object v15, v2

    move-object v2, v3

    goto/16 :goto_1b

    .line 451
    :catch_2e
    move-exception v2

    move-object v13, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_18

    :catch_2f
    move-exception v2

    move-object v13, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_18

    :catch_30
    move-exception v2

    move-object v13, v3

    move-object v4, v14

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_18

    :catch_31
    move-exception v2

    move-object v4, v14

    move-object/from16 v21, v2

    move-object v2, v3

    move-object/from16 v3, v21

    goto/16 :goto_18

    :catch_32
    move-exception v2

    move-object v4, v14

    move-object/from16 v21, v2

    move-object v2, v3

    move-object/from16 v3, v21

    goto/16 :goto_18

    :catch_33
    move-exception v3

    move-object v4, v14

    goto/16 :goto_18

    .line 387
    :catchall_c
    move-exception v2

    goto/16 :goto_35

    :cond_7c
    move-object v2, v3

    goto/16 :goto_39

    :cond_7d
    move-object v13, v3

    goto/16 :goto_14

    :cond_7e
    move/from16 v19, v2

    goto/16 :goto_c

    :cond_7f
    move-object v14, v4

    goto/16 :goto_1

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/bitmap/ReusableBitmap;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/android/bitmap/DecodeTask;->publishProgress([Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/bitmap/DecodeTask;->decode()Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/bitmap/DecodeTask;->doInBackground([Ljava/lang/Void;)Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/android/bitmap/ReusableBitmap;)V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mDecodeCallback:Lcom/android/bitmap/DecodeTask$DecodeCallback;

    iget-object v1, p0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v0, v1}, Lcom/android/bitmap/DecodeTask$DecodeCallback;->onDecodeCancel(Lcom/android/bitmap/RequestKey;)V

    .line 542
    if-nez p1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    invoke-virtual {p1}, Lcom/android/bitmap/ReusableBitmap;->releaseReference()V

    .line 547
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p1, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {p0, p1}, Lcom/android/bitmap/DecodeTask;->onCancelled(Lcom/android/bitmap/ReusableBitmap;)V

    return-void
.end method

.method public onPostExecute(Lcom/android/bitmap/ReusableBitmap;)V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mDecodeCallback:Lcom/android/bitmap/DecodeTask$DecodeCallback;

    iget-object v1, p0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v0, v1, p1}, Lcom/android/bitmap/DecodeTask$DecodeCallback;->onDecodeComplete(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)V

    .line 537
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {p0, p1}, Lcom/android/bitmap/DecodeTask;->onPostExecute(Lcom/android/bitmap/ReusableBitmap;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/bitmap/DecodeTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mDecodeCallback:Lcom/android/bitmap/DecodeTask$DecodeCallback;

    iget-object v1, p0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/RequestKey;

    invoke-interface {v0, v1}, Lcom/android/bitmap/DecodeTask$DecodeCallback;->onDecodeBegin(Lcom/android/bitmap/RequestKey;)V

    .line 532
    return-void
.end method
