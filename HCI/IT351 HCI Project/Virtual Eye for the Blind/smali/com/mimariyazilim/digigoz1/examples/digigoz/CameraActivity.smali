.class public abstract Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static BelirliArama:Ljava/lang/Boolean; = null

.field public static Ekranadi:Ljava/lang/String; = null

.field private static final LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

.field private static final PERMISSIONS_REQUEST:I = 0x1

.field private static final PERMISSION_CAMERA:Ljava/lang/String; = "android.permission.CAMERA"

.field public static SearchButton:Landroid/widget/Button;

.field public static SuanDinliyorArttirma:Z

.field public static SuanDinliyorSesKes:Z

.field public static aramaBasla:Z

.field public static aranan:Ljava/lang/String;

.field public static bulunamadi:Ljava/lang/String;

.field public static gorunuyor:Ljava/lang/String;

.field public static kesfetBasla:Z

.field public static kesfetButton:Landroid/widget/Button;

.field public static localLang:Ljava/lang/String;

.field public static mTTs:Landroid/speech/tts/TextToSpeech;

.field public static objeAraButton:Landroid/widget/Button;

.field public static ortada:Ljava/lang/String;

.field public static sagaKaydirmaSay:I

.field public static sagda:Ljava/lang/String;

.field public static solaKaydirmaSay:I

.field public static solda:Ljava/lang/String;

.field public static taninan_neseler:[Ljava/lang/String;

.field public static yaziOkuButton:Landroid/widget/Button;

.field public static yukariKaydirmaSay:I


# instance fields
.field DinlemeKontrolSayaci:I

.field public Listedevarmi:Z

.field private abdt:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private apiSwitchCompat:Landroidx/appcompat/widget/SwitchCompat;

.field basmasayisi:I

.field protected bottomSheetArrowImageView:Landroid/widget/ImageView;

.field private bottomSheetLayout:Landroid/widget/LinearLayout;

.field protected cropValueTextView:Landroid/widget/TextView;

.field private debug:Z

.field private dl:Landroidx/drawerlayout/widget/DrawerLayout;

.field protected frameValueTextView:Landroid/widget/TextView;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureLayout:Landroid/widget/LinearLayout;

.field girissayaci:I

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private imageConverter:Ljava/lang/Runnable;

.field protected inferenceTimeTextView:Landroid/widget/TextView;

.field public intent:Landroid/content/Intent;

.field private isProcessingFrame:Z

.field private minusImageView:Landroid/widget/ImageView;

.field private plusImageView:Landroid/widget/ImageView;

.field private postInferenceCallback:Ljava/lang/Runnable;

.field protected previewHeight:I

.field protected previewWidth:I

.field recognizer:Landroid/speech/SpeechRecognizer;

.field private rgbBytes:[I

.field ses_hiz_kontrol_sayaci:I

.field private sheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private threadsTextView:Landroid/widget/TextView;

.field private useCamera2API:Z

.field voiceResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private yRowStride:I

.field private yuvBytes:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 82

    .line 80
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    invoke-direct {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;-><init>()V

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const/4 v0, 0x0

    .line 128
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->BelirliArama:Ljava/lang/Boolean;

    .line 131
    sput-boolean v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SuanDinliyorSesKes:Z

    .line 140
    sput-boolean v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SuanDinliyorArttirma:Z

    .line 149
    sput-boolean v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->kesfetBasla:Z

    .line 150
    sput-boolean v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->aramaBasla:Z

    const-string v2, "insan"

    const-string v3, "bisiklet"

    const-string v4, "araba"

    const-string v5, "motosiklet"

    const-string v6, "u\u00e7ak"

    const-string v7, "otob\u00fcs"

    const-string v8, "tren"

    const-string v9, "kamyon"

    const-string v10, "gemi"

    const-string v11, "trafik lambas\u0131"

    const-string v12, "yang\u0131n muslu\u011fu"

    const-string v13, "dur i\u015fareti"

    const-string v14, "parkmetre"

    const-string v15, "oturma bank\u0131"

    const-string v16, "ku\u015f"

    const-string v17, "kedi"

    const-string v18, "k\u00f6pek"

    const-string v19, "at"

    const-string v20, "kuzu"

    const-string v21, "inek"

    const-string v22, "fil"

    const-string v23, "ay\u0131"

    const-string v24, "zebra"

    const-string v25, "zurafa"

    const-string v26, "\u00e7anta"

    const-string v27, "\u015femsiye"

    const-string v28, "el \u00e7antas\u0131"

    const-string v29, "kravat"

    const-string v30, "bavul"

    const-string v31, "frizbi"

    const-string v32, "kayaklar"

    const-string v33, "kayak"

    const-string v34, "top"

    const-string v35, "kaykay"

    const-string v36, "bezbol \u015fapkas\u0131"

    const-string v37, "bezbol topu"

    const-string v38, "kaykay"

    const-string v39, "s\u00f6rf tahtas\u0131"

    const-string v40, "tenis raketi"

    const-string v41, "\u015fi\u015fe"

    const-string v42, "\u015farap barda\u011f\u0131"

    const-string v43, "bardak"

    const-string v44, "\u00e7atal"

    const-string v45, "b\u0131\u00e7ak"

    const-string v46, "ka\u015f\u0131k"

    const-string v47, "tabak"

    const-string v48, "muz"

    const-string v49, "elma"

    const-string v50, "sandwich"

    const-string v51, "portakal"

    const-string v52, "brokoli"

    const-string v53, "havu\u00e7"

    const-string v54, "hot dog"

    const-string v55, "pizza"

    const-string v56, "donut"

    const-string v57, "kek"

    const-string v58, "sandalye"

    const-string v59, "kanape"

    const-string v60, "bitki"

    const-string v61, "yatak"

    const-string v62, "yemek masas\u0131"

    const-string v63, "tuvalet"

    const-string v64, "televizyon"

    const-string v65, "laptop"

    const-string v66, "fare"

    const-string v67, "kumanda"

    const-string v68, "klavye"

    const-string v69, "telefon"

    const-string v70, "mikrodalga"

    const-string v71, "f\u0131r\u0131n"

    const-string v72, "tost makinesi"

    const-string v73, "lavabo"

    const-string v74, "buzdolab\u0131"

    const-string v75, "kitap"

    const-string v76, "saat"

    const-string v77, "vazo"

    const-string v78, "makas"

    const-string v79, "oyuncak ay\u0131"

    const-string v80, "f\u00f6n makinesi"

    const-string v81, "di\u015f f\u0131r\u00e7as\u0131"

    .line 152
    filled-new-array/range {v2 .. v81}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->taninan_neseler:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->previewWidth:I

    .line 86
    iput v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->previewHeight:I

    .line 87
    iput-boolean v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->debug:Z

    .line 91
    iput-boolean v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->isProcessingFrame:Z

    const/4 v0, 0x3

    new-array v0, v0, [[B

    .line 92
    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->yuvBytes:[[B

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->rgbBytes:[I

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->Listedevarmi:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->gestureLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->sheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)[I
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->rgbBytes:[I

    return-object p0
.end method

.method static synthetic access$302(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->isProcessingFrame:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)[[B
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->yuvBytes:[[B

    return-object p0
.end method

.method static synthetic access$500(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->yRowStride:I

    return p0
.end method

.method private chooseCamera()Ljava/lang/String;
    .locals 9

    const-string v0, "camera"

    .line 976
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    const/4 v1, 0x0

    .line 978
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 979
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 982
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    .line 983
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 987
    :cond_0
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 988
    invoke-virtual {v6, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v8, :cond_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 998
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    .line 999
    invoke-direct {p0, v6, v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->useCamera2API:Z

    .line 1001
    sget-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const-string v4, "Camera API lv2?: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v4, v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    .line 1005
    sget-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Not allowed to access camera"

    invoke-virtual {v2, v0, v3, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasPermission()Z
    .locals 3

    .line 944
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    const-string v0, "android.permission.CAMERA"

    .line 945
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z
    .locals 3

    .line 967
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-gt p2, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private requestPermission()V
    .locals 3

    .line 952
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.CAMERA"

    .line 953
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "Camera permission is required for this demo"

    .line 954
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 958
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 960
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public DinleButon()V
    .locals 3

    .line 595
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 597
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->intent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    .line 599
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->intent:Landroid/content/Intent;

    .line 603
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "calling_package"

    .line 602
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->recognizer:Landroid/speech/SpeechRecognizer;

    .line 609
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$8;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$8;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)V

    .line 736
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->recognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method protected fillBytes([Landroid/media/Image$Plane;[[B)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1043
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1044
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1045
    aget-object v3, p2, v1

    if-nez v3, :cond_0

    .line 1046
    sget-object v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "Initializing buffer %d at size %d"

    invoke-virtual {v3, v5, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1047
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    new-array v3, v3, [B

    aput-object v3, p2, v1

    .line 1049
    :cond_0
    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract getDesiredPreviewFrameSize()Landroid/util/Size;
.end method

.method protected abstract getLayoutId()I
.end method

.method protected getLuminance()[B
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->yuvBytes:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getLuminanceStride()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->yRowStride:I

    return v0
.end method

.method protected getRgbBytes()[I
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->imageConverter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 578
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->rgbBytes:[I

    return-object v0
.end method

.method protected getScreenOrientation()I
    .locals 2

    .line 1064
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x10e

    return v0

    :cond_1
    const/16 v0, 0xb4

    return v0

    :cond_2
    const/16 v0, 0x5a

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 1054
    iget-boolean v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->debug:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 557
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "android.speech.extra.RESULTS"

    .line 562
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    .line 563
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->aranan:Ljava/lang/String;

    .line 565
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "mesut111"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 746
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->finish()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1078
    invoke-virtual {p0, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->setUseNNAPI(Z)V

    if-eqz p2, :cond_0

    .line 1079
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->apiSwitchCompat:Landroidx/appcompat/widget/SwitchCompat;

    const-string p2, "NNAPI"

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1080
    :cond_0
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->apiSwitchCompat:Landroidx/appcompat/widget/SwitchCompat;

    const-string p2, "TFLITE"

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1085
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f080095

    if-ne v0, v2, :cond_1

    .line 1086
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->threadsTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1087
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x9

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    add-int/2addr p1, v1

    .line 1090
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->threadsTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->setNumThreads(I)V

    goto :goto_0

    .line 1092
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080080

    if-ne p1, v0, :cond_3

    .line 1093
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->threadsTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1094
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 1099
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->threadsTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->setNumThreads(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 232
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->localLang:Ljava/lang/String;

    .line 234
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOCAL LANGUAGE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->localLang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 236
    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->girissayaci:I

    const-string v0, "AramaEkrani"

    .line 237
    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->Ekranadi:Ljava/lang/String;

    const v0, 0x7f0e0073

    .line 239
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->sagda:Ljava/lang/String;

    const v0, 0x7f0e0075

    .line 240
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->solda:Ljava/lang/String;

    const v0, 0x7f0e006c

    .line 241
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->ortada:Ljava/lang/String;

    const v0, 0x7f0e0063

    .line 242
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->gorunuyor:Ljava/lang/String;

    const v0, 0x7f0e0041

    .line 243
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->bulunamadi:Ljava/lang/String;

    .line 245
    sput p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->yukariKaydirmaSay:I

    .line 246
    sput p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->solaKaydirmaSay:I

    .line 247
    sput p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->sagaKaydirmaSay:I

    .line 249
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, p1, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 250
    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001c

    .line 252
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->setContentView(I)V

    const v0, 0x7f0800e0

    .line 253
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 254
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 255
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 262
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/MyGestureListener;

    invoke-direct {v2, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/MyGestureListener;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 266
    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->basmasayisi:I

    const p1, 0x7f080030

    .line 267
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SearchButton:Landroid/widget/Button;

    const p1, 0x7f0800f5

    .line 269
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->yaziOkuButton:Landroid/widget/Button;

    const p1, 0x7f080071

    .line 270
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->kesfetButton:Landroid/widget/Button;

    const p1, 0x7f08008c

    .line 271
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->objeAraButton:Landroid/widget/Button;

    .line 274
    iput v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->ses_hiz_kontrol_sayaci:I

    .line 276
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    if-nez p1, :cond_0

    .line 278
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$1;

    invoke-direct {v2, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$1;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)V

    const-string v3, "com.google.android.tts"

    invoke-direct {p1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    sput-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    .line 324
    :cond_0
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->kesfetButton:Landroid/widget/Button;

    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$2;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 342
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->objeAraButton:Landroid/widget/Button;

    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$3;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 379
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->yaziOkuButton:Landroid/widget/Button;

    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$4;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f08004f

    .line 402
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->dl:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 403
    new-instance v0, Landroidx/appcompat/app/ActionBarDrawerToggle;

    const v2, 0x7f0e0004

    const v3, 0x7f0e0001

    invoke-direct {v0, p0, p1, v2, v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->abdt:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 404
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 405
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->dl:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->abdt:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 406
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->abdt:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 408
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f080084

    .line 410
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/navigation/NavigationView;

    .line 412
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$5;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$5;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 460
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 466
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->hasPermission()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->setFragment()V

    goto :goto_0

    .line 469
    :cond_1
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->requestPermission()V

    :goto_0
    const p1, 0x7f0800db

    .line 472
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->threadsTextView:Landroid/widget/TextView;

    const p1, 0x7f080095

    .line 473
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->plusImageView:Landroid/widget/ImageView;

    const p1, 0x7f080080

    .line 474
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->minusImageView:Landroid/widget/ImageView;

    const p1, 0x7f080026

    .line 475
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->apiSwitchCompat:Landroidx/appcompat/widget/SwitchCompat;

    const p1, 0x7f08002f

    .line 476
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->bottomSheetLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f08005f

    .line 477
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->gestureLayout:Landroid/widget/LinearLayout;

    .line 478
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->bottomSheetLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->sheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const p1, 0x7f08002e

    .line 479
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->bottomSheetArrowImageView:Landroid/widget/ImageView;

    .line 481
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->gestureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 482
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$6;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$6;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 497
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->sheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 499
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->sheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$7;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$7;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    const p1, 0x7f08005e

    .line 527
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->frameValueTextView:Landroid/widget/TextView;

    const p1, 0x7f080040

    .line 528
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->cropValueTextView:Landroid/widget/TextView;

    const p1, 0x7f08006c

    .line 529
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->inferenceTimeTextView:Landroid/widget/TextView;

    .line 531
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->apiSwitchCompat:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 533
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->plusImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->minusImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    .line 917
    :try_start_0
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4

    .line 802
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->previewWidth:I

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->previewHeight:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 805
    :cond_0
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->rgbBytes:[I

    if-nez v2, :cond_1

    mul-int/2addr v0, v1

    .line 806
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->rgbBytes:[I

    :cond_1
    const/4 v0, 0x0

    .line 809
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 815
    :cond_2
    iget-boolean v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->isProcessingFrame:Z

    if-eqz v1, :cond_3

    .line 816
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    :cond_3
    const/4 v1, 0x1

    .line 819
    iput-boolean v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->isProcessingFrame:Z

    const-string v2, "imageAvailable"

    .line 820
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    .line 822
    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->yuvBytes:[[B

    invoke-virtual {p0, v2, v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->fillBytes([Landroid/media/Image$Plane;[[B)V

    .line 823
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    iput v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->yRowStride:I

    .line 824
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    .line 825
    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    .line 827
    new-instance v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;

    invoke-direct {v2, p0, v3, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;II)V

    iput-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->imageConverter:Ljava/lang/Runnable;

    .line 844
    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$12;

    invoke-direct {v1, p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$12;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;Landroid/media/Image;)V

    iput-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->postInferenceCallback:Ljava/lang/Runnable;

    .line 853
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->processImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catch_0
    move-exception p1

    .line 855
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Exception!"

    invoke-virtual {v1, p1, v2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 856
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->abdt:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public declared-synchronized onPause()V
    .locals 4

    monitor-enter p0

    .line 892
    :try_start_0
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    :try_start_1
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    .line 897
    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->handlerThread:Landroid/os/HandlerThread;

    .line 898
    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->handler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 900
    :try_start_2
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const-string v3, "Exception!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 903
    :goto_0
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 905
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 906
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    .line 756
    iget-boolean v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->isProcessingFrame:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 757
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Dropping frame!"

    invoke-virtual {p1, v0, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 763
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->rgbBytes:[I

    if-nez v0, :cond_1

    .line 764
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 765
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iput v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->previewHeight:I

    .line 766
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iput v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->previewWidth:I

    .line 767
    iget v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->previewHeight:I

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->rgbBytes:[I

    .line 768
    new-instance v2, Landroid/util/Size;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    const/16 v0, 0x5a

    invoke-virtual {p0, v2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->onPreviewSizeChosen(Landroid/util/Size;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v0, 0x1

    .line 775
    iput-boolean v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->isProcessingFrame:Z

    .line 776
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->yuvBytes:[[B

    aput-object p1, v0, v1

    .line 777
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->previewWidth:I

    iput v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->yRowStride:I

    .line 779
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$9;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;[B)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->imageConverter:Ljava/lang/Runnable;

    .line 787
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$10;

    invoke-direct {v0, p0, p2, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$10;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;Landroid/hardware/Camera;[B)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->postInferenceCallback:Ljava/lang/Runnable;

    .line 795
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->processImage()V

    return-void

    :catch_0
    move-exception p1

    .line 771
    sget-object p2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Exception!"

    invoke-virtual {p2, p1, v1, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract onPreviewSizeChosen(Landroid/util/Size;I)V
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 933
    array-length p1, p3

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    .line 936
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->setFragment()V

    goto :goto_0

    .line 938
    :cond_0
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->requestPermission()V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onResume()V
    .locals 3

    monitor-enter p0

    .line 879
    :try_start_0
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 880
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 882
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "inference"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->handlerThread:Landroid/os/HandlerThread;

    .line 883
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 884
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStart()V
    .locals 3

    monitor-enter p0

    .line 869
    :try_start_0
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 870
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStop()V
    .locals 3

    monitor-enter p0

    .line 910
    :try_start_0
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected abstract processImage()V
.end method

.method protected readyForNextImage()V
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->postInferenceCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1059
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected declared-synchronized runInBackground(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setFragment()V
    .locals 4

    .line 1012
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->chooseCamera()Ljava/lang/String;

    move-result-object v0

    .line 1015
    iget-boolean v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->useCamera2API:Z

    if-eqz v1, :cond_0

    .line 1016
    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$13;

    invoke-direct {v1, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$13;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)V

    .line 1027
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getLayoutId()I

    move-result v2

    .line 1028
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getDesiredPreviewFrameSize()Landroid/util/Size;

    move-result-object v3

    .line 1017
    invoke-static {v1, p0, v2, v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->newInstance(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ConnectionCallback;Landroid/media/ImageReader$OnImageAvailableListener;ILandroid/util/Size;)Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    move-result-object v1

    .line 1030
    invoke-virtual {v1, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->setCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    :cond_0
    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    .line 1034
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getDesiredPreviewFrameSize()Landroid/util/Size;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;-><init>(Landroid/hardware/Camera$PreviewCallback;ILandroid/util/Size;)V

    .line 1037
    :goto_0
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f08003b

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected abstract setNumThreads(I)V
.end method

.method protected abstract setUseNNAPI(Z)V
.end method

.method protected showCropInfo(Ljava/lang/String;)V
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->cropValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected showFrameInfo(Ljava/lang/String;)V
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->frameValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected showInference(Ljava/lang/String;)V
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->inferenceTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
