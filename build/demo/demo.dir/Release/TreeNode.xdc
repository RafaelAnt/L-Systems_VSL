<?xml version="1.0"?><doc>
<members>
<member name="T:Assimp.Intern.AllocateFromAssimpHeap" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="75">
@brief Internal helper class to utilize our internal new/delete
     *    routines for allocating object of this and derived classes.
     *
     * By doing this you can safely share class objects between Assimp
     * and the application - it works even over DLL boundaries. A good
     * example is the #IOSystem where the application allocates its custom
     * #IOSystem, then calls #Importer::SetIOSystem(). When the Importer
     * destructs, Assimp calls operator delete on the stored #IOSystem.
     * If it lies on a different heap than Assimp is working with,
     * the application is determined to crash.

</member>
<member name="T:aiPlane" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="120">
Represents a plane in a three-dimensional, euclidean space

</member>
<member name="T:aiRay" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="138">
Represents a ray

</member>
<member name="T:aiColor3D" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="156">
Represents a color in Red-Green-Blue space.

</member>
<member name="M:aiColor3D.op_Equality(aiColor3D!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="166">
Component-wise comparison 
</member>
<member name="M:aiColor3D.op_Inequality(aiColor3D!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="171">
Component-wise inverse comparison 
</member>
<member name="M:aiColor3D.op_LessThan(aiColor3D!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="176">
Component-wise comparison 
</member>
<member name="M:aiColor3D.op_Addition(aiColor3D!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="186">
Component-wise addition 
</member>
<member name="M:aiColor3D.op_Subtraction(aiColor3D!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="191">
Component-wise subtraction 
</member>
<member name="M:aiColor3D.op_Multiply(aiColor3D!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="196">
Component-wise multiplication 
</member>
<member name="M:aiColor3D.op_Multiply(System.Single)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="201">
Multiply with a scalar 
</member>
<member name="M:aiColor3D.op_Subscript(System.UInt32)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="206">
Access a specific color component 
</member>
<member name="M:aiColor3D.op_Subscript(System.UInt32)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="211">
Access a specific color component 
</member>
<member name="M:aiColor3D.IsBlack" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="216">
Check whether a color is black 
</member>
<member name="T:aiString" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="230">
Represents an UTF-8 string, zero byte terminated.
 *
 *  The character set of an aiString is explicitly defined to be UTF-8. This Unicode
 *  transformation was chosen in the belief that most strings in 3d files are limited
 *  to ASCII, thus the character set needed to be strictly ASCII compatible.
 *
 *  Most text file loaders provide proper Unicode input file handling, special unicode
 *  characters are correctly transcoded to UTF8 and are kept throughout the libraries'
 *  import pipeline.
 *
 *  For most applications, it will be absolutely sufficient to interpret the
 *  aiString as ASCII data and work with it as one would work with a plain char*.
 *  Windows users in need of proper support for i.e asian characters can use the
 *  MultiByteToWideChar(), WideCharToMultiByte() WinAPI functionality to convert the
 *  UTF-8 strings to their working character set (i.e. MBCS, WideChar).
 *
 *  We use this representation instead of std::string to be C-compatible. The
 *  (binary) length of such a string is limited to MAXLEN characters (including the
 *  the terminating zero).

</member>
<member name="M:aiString.#ctor" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="253">
Default constructor, the string is set to have zero length 
</member>
<member name="M:aiString.#ctor(aiString!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="265">
Copy constructor 
</member>
<member name="M:aiString.#ctor(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="275">
Constructor from std::string 
</member>
<member name="M:aiString.Set(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="284">
Copy a std::string to the aiString 
</member>
<member name="M:aiString.Set(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="294">
Copy a const char* to the aiString 
</member>
<member name="M:aiString.op_Assign(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="305">
Assign a const char* to the string 
</member>
<member name="M:aiString.op_Assign(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="311">
Assign a cstd::string to the string 
</member>
<member name="M:aiString.op_Equality(aiString!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="317">
Comparison operator 
</member>
<member name="M:aiString.op_Inequality(aiString!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="322">
Inverse comparison operator 
</member>
<member name="M:aiString.Append(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="327">
Append a string to the string 
</member>
<member name="M:aiString.Clear" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="341">
Clear the string - reset its length to zero 
</member>
<member name="M:aiString.C_Str" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="352">
Returns a pointer to the underlying zero-terminated array of characters 
</member>
<member name="F:aiString.length" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="359">
Binary length of the string excluding the terminal 0. This is NOT the
     *  logical length of strings containing UTF-8 multibyte sequences! It's
     *  the number of bytes from the beginning of the string to its end.
</member>
<member name="F:aiString.data" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="364">
String buffer. Size limit is MAXLEN 
</member>
<member name="F:aiReturn_SUCCESS" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="375">
Indicates that a function was successful 
</member>
<member name="F:aiReturn_FAILURE" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="378">
Indicates that a function failed 
</member>
<member name="F:aiReturn_OUTOFMEMORY" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="381">
Indicates that not enough memory was available
     * to perform the requested operation

</member>
<member name="F:_AI_ENFORCE_ENUM_SIZE" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="386">
@cond never
     *  Force 32-bit size enum

@endcond
</member>
<member name="T:aiReturn" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="370">
Standard return type for some library functions.
 * Rarely used, and if, mostly in the C API.

</member>
<member name="F:aiOrigin_SET" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="405">
Beginning of the file 
</member>
<member name="F:aiOrigin_CUR" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="408">
Current position of the file pointer 
</member>
<member name="F:aiOrigin_END" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="411">
End of the file, offsets must be negative 
</member>
<member name="F:_AI_ORIGIN_ENFORCE_ENUM_SIZE" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="414">
@cond never
    *   Force 32-bit size enum

@endcond
</member>
<member name="T:aiOrigin" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="400">
Seek origins (for the virtual file system API).
 *  Much cooler than using SEEK_SET, SEEK_CUR or SEEK_END.

</member>
<member name="F:aiDefaultLogStream_FILE" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="429">
Stream the log to a file 
</member>
<member name="F:aiDefaultLogStream_STDOUT" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="432">
Stream the log to std::cout 
</member>
<member name="F:aiDefaultLogStream_STDERR" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="435">
Stream the log to std::cerr 
</member>
<member name="F:aiDefaultLogStream_DEBUGGER" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="438">
MSVC only: Stream the log the the debugger
     * (this relies on OutputDebugString from the Win32 SDK)

</member>
<member name="F:_AI_DLS_ENFORCE_ENUM_SIZE" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="443">
@cond never
     *  Force 32-bit size enum

@endcond
</member>
<member name="T:aiDefaultLogStream" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="423">
@brief Enumerates predefined log streaming destinations.
 *  Logging to these streams can be enabled with a single call to
 *   #LogStream::createDefaultStream.

</member>
<member name="T:aiMemoryInfo" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="457">
Stores the memory requirements for different components (e.g. meshes, materials,
 *  animations) of an import. All sizes are in bytes.
 *  @see Importer::GetMemoryRequirements()

</member>
<member name="M:aiMemoryInfo.#ctor" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="465">
Default constructor 
</member>
<member name="F:aiMemoryInfo.textures" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="479">
Storage allocated for texture data 
</member>
<member name="F:aiMemoryInfo.materials" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="482">
Storage allocated for material data  
</member>
<member name="F:aiMemoryInfo.meshes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="485">
Storage allocated for mesh data 
</member>
<member name="F:aiMemoryInfo.nodes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="488">
Storage allocated for node data 
</member>
<member name="F:aiMemoryInfo.animations" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="491">
Storage allocated for animation data 
</member>
<member name="F:aiMemoryInfo.cameras" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="494">
Storage allocated for camera data 
</member>
<member name="F:aiMemoryInfo.lights" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="497">
Storage allocated for light data 
</member>
<member name="F:aiMemoryInfo.total" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\types.h" line="500">
Total storage allocated for the full import. 
</member>
<member name="F:aiComponent_NORMALS" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\config.h" line="385">
Normal vectors 
</member>
<member name="F:aiComponent_TANGENTS_AND_BITANGENTS" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\config.h" line="392">
Tangents and bitangents go always together ... 
</member>
<member name="F:aiComponent_COLORS" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\config.h" line="399">
ALL color sets
     * Use aiComponent_COLORn(N) to specify the N'th set 
</member>
<member name="F:aiComponent_TEXCOORDS" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\config.h" line="403">
ALL texture UV sets
     * aiComponent_TEXCOORDn(N) to specify the N'th set  
</member>
<member name="F:aiComponent_BONEWEIGHTS" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\config.h" line="407">
Removes all bone weights from all meshes.
     * The scenegraph nodes corresponding to the bones are NOT removed.
     * use the #aiProcess_OptimizeGraph step to do this 
</member>
<member name="F:aiComponent_ANIMATIONS" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\config.h" line="412">
Removes all node animations (aiScene::mAnimations).
     * The corresponding scenegraph nodes are NOT removed.
     * use the #aiProcess_OptimizeGraph step to do this 
</member>
<member name="F:aiComponent_TEXTURES" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\config.h" line="417">
Removes all embedded textures (aiScene::mTextures) 
</member>
<member name="F:aiComponent_LIGHTS" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\config.h" line="420">
Removes all light sources (aiScene::mLights).
     * The corresponding scenegraph nodes are NOT removed.
     * use the #aiProcess_OptimizeGraph step to do this 
</member>
<member name="F:aiComponent_CAMERAS" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\config.h" line="425">
Removes all cameras (aiScene::mCameras).
     * The corresponding scenegraph nodes are NOT removed.
     * use the #aiProcess_OptimizeGraph step to do this 
</member>
<member name="F:aiComponent_MESHES" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\config.h" line="430">
Removes all meshes (aiScene::mMeshes). 
</member>
<member name="F:aiComponent_MATERIALS" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\config.h" line="433">
Removes all materials. One default material will
     * be generated, so aiScene::mNumMaterials will be 1. 
</member>
<member name="F:_aiComponent_Force32Bit" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\config.h" line="438">
This value is not used. It is just there to force the
     *  compiler to map this enum to a 32 Bit integer. 
</member>
<!-- Discarding badly formed XML document comment for member 'T:aiComponent'. -->
<member name="T:Assimp.Importer" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="93">
CPP-API: The Importer class forms an C++ interface to the functionality of the
*   Open Asset Import Library.
*
* Create an object of this class and call ReadFile() to import a file.
* If the import succeeds, the function returns a pointer to the imported data.
* The data remains property of the object, it is intended to be accessed
* read-only. The imported data will be destroyed along with the Importer
* object. If the import fails, ReadFile() returns a NULL pointer. In this
* case you can retrieve a human-readable error description be calling
* GetErrorString(). You can call ReadFile() multiple times with a single Importer
* instance. Actually, constructing Importer objects involves quite many
* allocations and may take some time, so it's better to reuse them as often as
* possible.
*
* If you need the Importer to do custom file handling to access the files,
* implement IOSystem and IOStream and supply an instance of your custom
* IOSystem implementation by calling SetIOHandler() before calling ReadFile().
* If you do not assign a custion IO handler, a default handler using the
* standard C++ IO logic will be used.
*
* @note One Importer instance is not thread-safe. If you use multiple
* threads for loading, each thread should maintain its own Importer instance.

</member>
<member name="F:Assimp.Importer.MaxLenHint" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="118">
@brief The upper limit for hints.

</member>
<member name="M:Assimp.Importer.#ctor" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="126">
Constructor. Creates an empty importer object.
     *
     * Call ReadFile() to start the import process. The configuration
     * property table is initially empty.

</member>
<member name="M:Assimp.Importer.#ctor(Assimp.Importer!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="134">
Copy constructor.
     *
     * This copies the configuration properties of another Importer.
     * If this Importer owns a scene it won't be copied.
     * Call ReadFile() to start the import process.

</member>
<member name="M:Assimp.Importer.Dispose" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="143">
Destructor. The object kept ownership of the imported data,
     * which now will be destroyed along with the object.

</member>
<member name="M:Assimp.Importer.RegisterLoader(Assimp.BaseImporter*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="150">
Registers a new loader.
     *
     * @param pImp Importer to be added. The Importer instance takes
     *   ownership of the pointer, so it will be automatically deleted
     *   with the Importer instance.
     * @return AI_SUCCESS if the loader has been added. The registration
     *   fails if there is already a loader for a specific file extension.

</member>
<member name="M:Assimp.Importer.UnregisterLoader(Assimp.BaseImporter*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="161">
Unregisters a loader.
     *
     * @param pImp Importer to be unregistered.
     * @return AI_SUCCESS if the loader has been removed. The function
     *   fails if the loader is currently in use (this could happen
     *   if the #Importer instance is used by more than one thread) or
     *   if it has not yet been registered.

</member>
<member name="M:Assimp.Importer.RegisterPPStep(Assimp.BaseProcess*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="172">
Registers a new post-process step.
     *
     * At the moment, there's a small limitation: new post processing
     * steps are added to end of the list, or in other words, executed
     * last, after all built-in steps.
     * @param pImp Post-process step to be added. The Importer instance
     *   takes ownership of the pointer, so it will be automatically
     *   deleted with the Importer instance.
     * @return AI_SUCCESS if the step has been added correctly.

</member>
<member name="M:Assimp.Importer.UnregisterPPStep(Assimp.BaseProcess*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="185">
Unregisters a post-process step.
     *
     * @param pImp Step to be unregistered.
     * @return AI_SUCCESS if the step has been removed. The function
     *   fails if the step is currently in use (this could happen
     *   if the #Importer instance is used by more than one thread) or
     *   if it has not yet been registered.

</member>
<member name="M:Assimp.Importer.SetPropertyInteger(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="197">
Set an integer configuration property.
     * @param szName Name of the property. All supported properties
     *   are defined in the aiConfig.g header (all constants share the
     *   prefix AI_CONFIG_XXX and are simple strings).
     * @param iValue New value of the property
     * @return true if the property was set before. The new value replaces
     *   the previous value in this case.
     * @note Property of different types (float, int, string ..) are kept
     *   on different stacks, so calling SetPropertyInteger() for a
     *   floating-point property has no effect - the loader will call
     *   GetPropertyFloat() to read the property, but it won't be there.

</member>
<member name="M:Assimp.Importer.SetPropertyBool(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Boolean)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="212">
Set a boolean configuration property. Boolean properties
     *  are stored on the integer stack internally so it's possible
     *  to set them via #SetPropertyBool and query them with
     *  #GetPropertyBool and vice versa.
     * @see SetPropertyInteger()

</member>
<member name="M:Assimp.Importer.SetPropertyFloat(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="223">
Set a floating-point configuration property.
     * @see SetPropertyInteger()

</member>
<member name="M:Assimp.Importer.SetPropertyString(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="229">
Set a string configuration property.
     * @see SetPropertyInteger()

</member>
<member name="M:Assimp.Importer.SetPropertyMatrix(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,aiMatrix4x4t&lt;System.Single&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="235">
Set a matrix configuration property.
     * @see SetPropertyInteger()

</member>
<member name="M:Assimp.Importer.GetPropertyInteger(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="241">
Get a configuration property.
     * @param szName Name of the property. All supported properties
     *   are defined in the aiConfig.g header (all constants share the
     *   prefix AI_CONFIG_XXX).
     * @param iErrorReturn Value that is returned if the property
     *   is not found.
     * @return Current value of the property
     * @note Property of different types (float, int, string ..) are kept
     *   on different lists, so calling SetPropertyInteger() for a
     *   floating-point property has no effect - the loader will call
     *   GetPropertyFloat() to read the property, but it won't be there.

</member>
<member name="M:Assimp.Importer.GetPropertyBool(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Boolean)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="257">
Get a boolean configuration property. Boolean properties
     *  are stored on the integer stack internally so it's possible
     *  to set them via #SetPropertyBool and query them with
     *  #GetPropertyBool and vice versa.
     * @see GetPropertyInteger()

</member>
<member name="M:Assimp.Importer.GetPropertyFloat(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="268">
Get a floating-point configuration property
     * @see GetPropertyInteger()

</member>
<member name="M:Assimp.Importer.GetPropertyString(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="275">
Get a string configuration property
     *
     *  The return value remains valid until the property is modified.
     * @see GetPropertyInteger()

</member>
<member name="M:Assimp.Importer.GetPropertyMatrix(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,aiMatrix4x4t&lt;System.Single&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="284">
Get a matrix configuration property
     *
     *  The return value remains valid until the property is modified.
     * @see GetPropertyInteger()

</member>
<member name="M:Assimp.Importer.SetIOHandler(Assimp.IOSystem*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="293">
Supplies a custom IO handler to the importer to use to open and
     * access files. If you need the importer to use custion IO logic to
     * access the files, you need to provide a custom implementation of
     * IOSystem and IOFile to the importer. Then create an instance of
     * your custion IOSystem implementation and supply it by this function.
     *
     * The Importer takes ownership of the object and will destroy it
     * afterwards. The previously assigned handler will be deleted.
     * Pass NULL to take again ownership of your IOSystem and reset Assimp
     * to use its default implementation.
     *
     * @param pIOHandler The IO handler to be used in all file accesses
     *   of the Importer.

</member>
<member name="M:Assimp.Importer.GetIOHandler" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="310">
Retrieves the IO handler that is currently set.
     * You can use #IsDefaultIOHandler() to check whether the returned
     * interface is the default IO handler provided by ASSIMP. The default
     * handler is active as long the application doesn't supply its own
     * custom IO handler via #SetIOHandler().
     * @return A valid IOSystem interface, never NULL.

</member>
<member name="M:Assimp.Importer.IsDefaultIOHandler" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="320">
Checks whether a default IO handler is active
     * A default handler is active as long the application doesn't
     * supply its own custom IO handler via #SetIOHandler().
     * @return true by default

</member>
<member name="M:Assimp.Importer.SetProgressHandler(Assimp.ProgressHandler*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="328">
Supplies a custom progress handler to the importer. This
     *  interface exposes a #Update() callback, which is called
     *  more or less periodically (please don't sue us if it
     *  isn't as periodically as you'd like it to have ...).
     *  This can be used to implement progress bars and loading
     *  timeouts.
     *  @param pHandler Progress callback interface. Pass NULL to
     *    disable progress reporting.
     *  @note Progress handlers can be used to abort the loading
     *    at almost any time.
</member>
<member name="M:Assimp.Importer.GetProgressHandler" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="341">
Retrieves the progress handler that is currently set.
     * You can use #IsDefaultProgressHandler() to check whether the returned
     * interface is the default handler provided by ASSIMP. The default
     * handler is active as long the application doesn't supply its own
     * custom handler via #SetProgressHandler().
     * @return A valid ProgressHandler interface, never NULL.

</member>
<member name="M:Assimp.Importer.IsDefaultProgressHandler" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="351">
Checks whether a default progress handler is active
     * A default handler is active as long the application doesn't
     * supply its own custom progress handler via #SetProgressHandler().
     * @return true by default

</member>
<member name="M:Assimp.Importer.ValidateFlags(System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="359">
@brief Check whether a given set of postprocessing flags
     *  is supported.
     *
     *  Some flags are mutually exclusive, others are probably
     *  not available because your excluded them from your
     *  Assimp builds. Calling this function is recommended if
     *  you're unsure.
     *
     *  @param pFlags Bitwise combination of the aiPostProcess flags.
     *  @return true if this flag combination is fine.

</member>
<member name="M:Assimp.Importer.ReadFile(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="373">
Reads the given file and returns its contents if successful.
     *
     * If the call succeeds, the contents of the file are returned as a
     * pointer to an aiScene object. The returned data is intended to be
     * read-only, the importer object keeps ownership of the data and will
     * destroy it upon destruction. If the import fails, NULL is returned.
     * A human-readable error description can be retrieved by calling
     * GetErrorString(). The previous scene will be deleted during this call.
     * @param pFile Path and filename to the file to be imported.
     * @param pFlags Optional post processing steps to be executed after
     *   a successful import. Provide a bitwise combination of the
     *   #aiPostProcessSteps flags. If you wish to inspect the imported
     *   scene first in order to fine-tune your post-processing setup,
     *   consider to use #ApplyPostProcessing().
     * @return A pointer to the imported data, NULL if the import failed.
     *   The pointer to the scene remains in possession of the Importer
     *   instance. Use GetOrphanedScene() to take ownership of it.
     *
     * @note Assimp is able to determine the file format of a file
     * automatically.

</member>
<member name="M:Assimp.Importer.ReadFileFromMemory(System.Void!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.UInt32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="399">
Reads the given file from a memory buffer and returns its
     *  contents if successful.
     *
     * If the call succeeds, the contents of the file are returned as a
     * pointer to an aiScene object. The returned data is intended to be
     * read-only, the importer object keeps ownership of the data and will
     * destroy it upon destruction. If the import fails, NULL is returned.
     * A human-readable error description can be retrieved by calling
     * GetErrorString(). The previous scene will be deleted during this call.
     * Calling this method doesn't affect the active IOSystem.
     * @param pBuffer Pointer to the file data
     * @param pLength Length of pBuffer, in bytes
     * @param pFlags Optional post processing steps to be executed after
     *   a successful import. Provide a bitwise combination of the
     *   #aiPostProcessSteps flags. If you wish to inspect the imported
     *   scene first in order to fine-tune your post-processing setup,
     *   consider to use #ApplyPostProcessing().
     * @param pHint An additional hint to the library. If this is a non
     *   empty string, the library looks for a loader to support
     *   the file extension specified by pHint and passes the file to
     *   the first matching loader. If this loader is unable to completely
     *   the request, the library continues and tries to determine the
     *   file format on its own, a task that may or may not be successful.
     *   Check the return value, and you'll know ...
     * @return A pointer to the imported data, NULL if the import failed.
     *   The pointer to the scene remains in possession of the Importer
     *   instance. Use GetOrphanedScene() to take ownership of it.
     *
     * @note This is a straightforward way to decode models from memory
     * buffers, but it doesn't handle model formats that spread their
     * data across multiple files or even directories. Examples include
     * OBJ or MD3, which outsource parts of their material info into
     * external scripts. If you need full functionality, provide
     * a custom IOSystem to make Assimp find these files and use
     * the regular ReadFile() API.

</member>
<member name="M:Assimp.Importer.ApplyPostProcessing(System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="442">
Apply post-processing to an already-imported scene.
     *
     *  This is strictly equivalent to calling #ReadFile() with the same
     *  flags. However, you can use this separate function to inspect
     *  the imported scene first to fine-tune your post-processing setup.
     *  @param pFlags Provide a bitwise combination of the
     *   #aiPostProcessSteps flags.
     *  @return A pointer to the post-processed data. This is still the
     *   same as the pointer returned by #ReadFile(). However, if
     *   post-processing fails, the scene could now be NULL.
     *   That's quite a rare case, post processing steps are not really
     *   designed to 'fail'. To be exact, the #aiProcess_ValidateDS
     *   flag is currently the only post processing step which can actually
     *   cause the scene to be reset to NULL.
     *
     *  @note The method does nothing if no scene is currently bound
     *    to the #Importer instance.  
</member>
<member name="M:Assimp.Importer.ReadFile(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="464">
@brief Reads the given file and returns its contents if successful.
     *
     * This function is provided for backward compatibility.
     * See the const char* version for detailed docs.
     * @see ReadFile(const char*, pFlags)  
</member>
<member name="M:Assimp.Importer.FreeScene" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="474">
Frees the current scene.
     *
     *  The function does nothing if no scene has previously been
     *  read via ReadFile(). FreeScene() is called automatically by the
     *  destructor and ReadFile() itself.  
</member>
<member name="M:Assimp.Importer.GetErrorString" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="482">
Returns an error description of an error that occurred in ReadFile().
     *
     * Returns an empty string if no error occurred.
     * @return A description of the last error, an empty string if no
     *   error occurred. The string is never NULL.
     *
     * @note The returned function remains valid until one of the
     * following methods is called: #ReadFile(), #FreeScene(). 
</member>
<member name="M:Assimp.Importer.GetScene" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="493">
Returns the scene loaded by the last successful call to ReadFile()
     *
     * @return Current scene or NULL if there is currently no scene loaded 
</member>
<member name="M:Assimp.Importer.GetOrphanedScene" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="499">
Returns the scene loaded by the last successful call to ReadFile()
     *  and releases the scene from the ownership of the Importer
     *  instance. The application is now responsible for deleting the
     *  scene. Any further calls to GetScene() or GetOrphanedScene()
     *  will return NULL - until a new scene has been loaded via ReadFile().
     *
     * @return Current scene or NULL if there is currently no scene loaded
     * @note Use this method with maximal caution, and only if you have to.
     *   By design, aiScene's are exclusively maintained, allocated and
     *   deallocated by Assimp and no one else. The reasoning behind this
     *   is the golden rule that deallocations should always be done
     *   by the module that did the original allocation because heaps
     *   are not necessarily shared. GetOrphanedScene() enforces you
     *   to delete the returned scene by yourself, but this will only
     *   be fine if and only if you're using the same heap as assimp.
     *   On Windows, it's typically fine provided everything is linked
     *   against the multithreaded-dll version of the runtime library.
     *   It will work as well for static linkage with Assimp.
</member>
<member name="M:Assimp.Importer.IsExtensionSupported(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="523">
Returns whether a given file extension is supported by ASSIMP.
     *
     * @param szExtension Extension to be checked.
     *   Must include a trailing dot '.'. Example: ".3ds", ".md3".
     *   Cases-insensitive.
     * @return true if the extension is supported, false otherwise 
</member>
<member name="M:Assimp.Importer.IsExtensionSupported(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="532">
@brief Returns whether a given file extension is supported by ASSIMP.
     *
     * This function is provided for backward compatibility.
     * See the const char* version for detailed and up-to-date docs.
     * @see IsExtensionSupported(const char*) 
</member>
<member name="M:Assimp.Importer.GetExtensionList(aiString*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="540">
Get a full list of all file extensions supported by ASSIMP.
     *
     * If a file extension is contained in the list this does of course not
     * mean that ASSIMP is able to load all files with this extension ---
     * it simply means there is an importer loaded which claims to handle
     * files with this file extension.
     * @param szOut String to receive the extension list.
     *   Format of the list: "*.3ds;*.obj;*.dae". This is useful for
     *   use with the WinAPI call GetOpenFileName(Ex). 
</member>
<!-- Discarding badly formed XML document comment for member 'M:Assimp.Importer.GetExtensionList(std.basic_string<System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator<System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte>>*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)'. -->
<member name="M:Assimp.Importer.GetImporterCount" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="560">
Get the number of importrs currently registered with Assimp. 
</member>
<!-- Discarding badly formed XML document comment for member 'M:Assimp.Importer.GetImporterInfo(System.UInt32)'. -->
<member name="M:Assimp.Importer.GetImporter(System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="574">
Find the importer corresponding to a specific index.
    *
    *  @param index Index to query, must be within [0,GetImporterCount())
    *  @return Importer instance. NULL if the index does not
    *     exist. 
</member>
<member name="M:Assimp.Importer.GetImporter(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="582">
Find the importer corresponding to a specific file extension.
    *
    *  This is quite similar to #IsExtensionSupported except a
    *  BaseImporter instance is returned.
    *  @param szExtension Extension to check for. The following formats
    *    are recognized (BAH being the file extension): "BAH" (comparison
    *    is case-insensitive), ".bah", "*.bah" (wild card and dot
    *    characters at the beginning of the extension are skipped).
    *  @return NULL if no importer is found
</member>
<member name="M:Assimp.Importer.GetImporterIndex(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="594">
Find the importer index corresponding to a specific file extension.
    *
    *  @param szExtension Extension to check for. The following formats
    *    are recognized (BAH being the file extension): "BAH" (comparison
    *    is case-insensitive), ".bah", "*.bah" (wild card and dot
    *    characters at the beginning of the extension are skipped).
    *  @return (size_t)-1 if no importer is found 
</member>
<member name="M:Assimp.Importer.GetMemoryRequirements(aiMemoryInfo*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="607">
Returns the storage allocated by ASSIMP to hold the scene data
     * in memory.
     *
     * This refers to the currently loaded file, see #ReadFile().
     * @param in Data structure to be filled.
     * @note The returned memory statistics refer to the actual
     *   size of the use data of the aiScene. Heap-related overhead
     *   is (naturally) not included.
</member>
<member name="M:Assimp.Importer.SetExtraVerbose(System.Boolean)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="618">
Enables "extra verbose" mode.
     *
     * 'Extra verbose' means the data structure is validated after *every*
     * single post processing step to make sure everyone modifies the data
     * structure in a well-defined manner. This is a debug feature and not
     * intended for use in production environments. 
</member>
<member name="M:Assimp.Importer.Pimpl" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\importer.hpp" line="628">
Private, do not use. 
</member>
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_CalcTangentSpace'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_JoinIdenticalVertices'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_MakeLeftHanded'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_Triangulate'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_RemoveComponent'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_GenNormals'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_GenSmoothNormals'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_SplitLargeMeshes'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_PreTransformVertices'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_LimitBoneWeights'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_ValidateDataStructure'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_ImproveCacheLocality'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_RemoveRedundantMaterials'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_FixInfacingNormals'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_SortByPType'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_FindDegenerates'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_FindInvalidData'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_GenUVCoords'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_TransformUVCoords'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_FindInstances'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_OptimizeMeshes'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_OptimizeGraph'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_FlipUVs'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_FlipWindingOrder'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_SplitByBoneCount'. -->
<!-- Discarding badly formed XML document comment for member 'F:aiProcess_Debone'. -->
<member name="T:aiPostProcessSteps" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\postprocess.h" line="41">
@file postprocess.h
 *  @brief Definitions for import post processing steps

@enum  aiPostProcessSteps
 *  @brief Defines the flags for all possible post processing steps.
 *
 *  @note Some steps are influenced by properties set on the Assimp::Importer itself
 *
 *  @see Assimp::Importer::ReadFile()
 *  @see Assimp::Importer::SetPropertyInteger()
 *  @see aiImportFile
 *  @see aiImportFileEx

</member>
<member name="T:aiTexel" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="42">
@file scene.h
 *  @brief Defines the data structures in which the imported scene is returned.

@file texture.h
 *  @brief Defines texture helper structures for the library
 *
 * Used for file formats which embed their textures into the model file.
 * Supported are both normal textures, which are stored as uncompressed
 * pixels, and "compressed" textures, which are stored in a file format
 * such as PNG or TGA.

@def AI_MAKE_EMBEDDED_TEXNAME
 *  Used to build the reserved path name used by the material system to
 *  reference textures that are embedded into their corresponding
 *  model files. The parameter specifies the index of the texture
 *  (zero-based, in the aiScene::mTextures array)

@brief Helper structure to represent a texel in a ARGB8888 format
*
*  Used by aiTexture.

</member>
<member name="T:aiTexture" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\texture.h" line="111">
Helper structure to describe an embedded texture
 *
 * Normally textures are contained in external files but some file formats embed
 * them directly in the model file. There are two types of embedded textures:
 * 1. Uncompressed textures. The color data is given in an uncompressed format.
 * 2. Compressed textures stored in a file format like png or jpg. The raw file
 * bytes are given so the application must utilize an image decoder (e.g. DevIL) to
 * get access to the actual color data.
 *
 * Embedded textures are referenced from materials using strings like "*0", "*1", etc.
 * as the texture paths (a single asterisk character followed by the
 * zero-based index of the texture in the aiScene::mTextures array).

</member>
<member name="F:aiTexture.mWidth" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\texture.h" line="126">
Width of the texture, in pixels
     *
     * If mHeight is zero the texture is compressed in a format
     * like JPEG. In this case mWidth specifies the size of the
     * memory area pcData is pointing to, in bytes.

</member>
<member name="F:aiTexture.mHeight" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\texture.h" line="134">
Height of the texture, in pixels
     *
     * If this value is zero, pcData points to an compressed texture
     * in any format (e.g. JPEG).

</member>
<member name="F:aiTexture.achFormatHint" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\texture.h" line="141">
A hint from the loader to make it easier for applications
     *  to determine the type of embedded compressed textures.
     *
     * If mHeight != 0 this member is undefined. Otherwise it
     * is set set to '\\0\\0\\0\\0' if the loader has no additional
     * information about the texture file format used OR the
     * file extension of the format without a trailing dot. If there
     * are multiple file extensions for a format, the shortest
     * extension is chosen (JPEG maps to 'jpg', not to 'jpeg').
     * E.g. 'dds\\0', 'pcx\\0', 'jpg\\0'.  All characters are lower-case.
     * The fourth character will always be '\\0'.

</member>
<member name="F:aiTexture.pcData" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\texture.h" line="155">
Data of the texture.
     *
     * Points to an array of mWidth * mHeight aiTexel's.
     * The format of the texture data is always ARGB8888 to
     * make the implementation for user of the library as easy
     * as possible. If mHeight = 0 this is a pointer to a memory
     * buffer of size mWidth containing the compressed texture
     * data. Good luck, have fun!

</member>
<!-- Discarding badly formed XML document comment for member 'T:aiFace'. -->
<member name="T:aiVertexWeight" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="199">
@brief A single influence of a bone on a vertex.

</member>
<member name="T:aiBone" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="227">
@brief A single bone of a mesh.
 *
 *  A bone has a name by which it can be found in the frame hierarchy and by
 *  which it can be addressed by animations. In addition it has a number of
 *  influences on vertices.

</member>
<member name="F:aiPrimitiveType_POINT" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="290">
A point primitive.
     *
     * This is just a single vertex in the virtual world,
     * #aiFace contains just one index for such a primitive.

</member>
<member name="F:aiPrimitiveType_LINE" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="297">
A line primitive.
     *
     * This is a line defined through a start and an end position.
     * #aiFace contains exactly two indices for such a primitive.

</member>
<member name="F:aiPrimitiveType_TRIANGLE" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="304">
A triangular primitive.
     *
     * A triangle consists of three indices.

</member>
<member name="F:aiPrimitiveType_POLYGON" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="310">
A higher-level polygon with more than 3 edges.
     *
     * A triangle is a polygon, but polygon in this context means
     * "all polygons that are not triangles". The "Triangulate"-Step
     * is provided for your convenience, it splits all polygons in
     * triangles (which are much easier to handle).

</member>
<member name="F:_aiPrimitiveType_Force32Bit" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="320">
This value is not used. It is just here to force the
     *  compiler to map this enum to a 32 Bit integer.

</member>
<member name="T:aiPrimitiveType" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="281">
@brief Enumerates the types of geometric primitives supported by Assimp.
 *
 *  @see aiFace Face data structure
 *  @see aiProcess_SortByPType Per-primitive sorting of meshes
 *  @see aiProcess_Triangulate Automatic triangulation
 *  @see AI_CONFIG_PP_SBP_REMOVE Removal of specific primitive types.

</member>
<member name="T:aiAnimMesh" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="335">
@brief NOT CURRENTLY IN USE. An AnimMesh is an attachment to an #aiMesh stores per-vertex
 *  animations for a particular frame.
 *
 *  You may think of an #aiAnimMesh as a `patch` for the host mesh, which
 *  replaces only certain vertex data streams at a particular time.
 *  Each mesh stores n attached attached meshes (#aiMesh::mAnimMeshes).
 *  The actual relationship between the time line and anim meshes is
 *  established by #aiMeshAnim, which references singular mesh attachments
 *  by their ID and binds them to a time offset.

</member>
<member name="F:aiAnimMesh.mVertices" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="347">
Replacement for aiMesh::mVertices. If this array is non-NULL,
     *  it *must* contain mNumVertices entries. The corresponding
     *  array in the host mesh must be non-NULL as well - animation
     *  meshes may neither add or nor remove vertex components (if
     *  a replacement array is NULL and the corresponding source
     *  array is not, the source data is taken instead)
</member>
<member name="F:aiAnimMesh.mNormals" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="355">
Replacement for aiMesh::mNormals.  
</member>
<member name="F:aiAnimMesh.mTangents" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="358">
Replacement for aiMesh::mTangents. 
</member>
<member name="F:aiAnimMesh.mBitangents" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="361">
Replacement for aiMesh::mBitangents. 
</member>
<member name="F:aiAnimMesh.mColors" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="364">
Replacement for aiMesh::mColors 
</member>
<member name="F:aiAnimMesh.mTextureCoords" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="367">
Replacement for aiMesh::mTextureCoords 
</member>
<member name="F:aiAnimMesh.mNumVertices" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="370">
The number of vertices in the aiAnimMesh, and thus the length of all
     * the member arrays.
     *
     * This has always the same value as the mNumVertices property in the
     * corresponding aiMesh. It is duplicated here merely to make the length
     * of the member arrays accessible even if the aiMesh is not known, e.g.
     * from language bindings.

</member>
<member name="M:aiAnimMesh.HasPositions" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="412">
Check whether the anim mesh overrides the vertex positions
     *  of its host mesh
</member>
<member name="M:aiAnimMesh.HasNormals" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="418">
Check whether the anim mesh overrides the vertex normals
     *  of its host mesh
</member>
<member name="M:aiAnimMesh.HasTangentsAndBitangents" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="424">
Check whether the anim mesh overrides the vertex tangents
     *  and bitangents of its host mesh. As for aiMesh,
     *  tangents and bitangents always go together. 
</member>
<!-- Discarding badly formed XML document comment for member 'M:aiAnimMesh.HasVertexColors(System.UInt32)'. -->
<!-- Discarding badly formed XML document comment for member 'M:aiAnimMesh.HasTextureCoords(System.UInt32)'. -->
<member name="T:aiMesh" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="450">
@brief A mesh represents a geometry or model with a single material.
*
* It usually consists of a number of vertices and a series of primitives/faces
* referencing the vertices. In addition there might be a series of bones, each
* of them addressing a number of vertices with a certain weight. Vertex data
* is presented in channels with each channel containing a single per-vertex
* information such as a set of texture coords or a normal vector.
* If a data pointer is non-null, the corresponding data stream is present.
* From C++-programs you can also use the comfort functions Has*() to
* test for the presence of various data streams.
*
* A Mesh uses only a single material which is referenced by a material ID.
* @note The mPositions member is usually not optional. However, vertex positions
* *could* be missing if the #AI_SCENE_FLAGS_INCOMPLETE flag is set in
* @code
* aiScene::mFlags
* @endcode

</member>
<member name="F:aiMesh.mPrimitiveTypes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="470">
Bitwise combination of the members of the #aiPrimitiveType enum.
     * This specifies which types of primitives are present in the mesh.
     * The "SortByPrimitiveType"-Step can be used to make sure the
     * output meshes consist of one primitive type each.

</member>
<member name="F:aiMesh.mNumVertices" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="477">
The number of vertices in this mesh.
    * This is also the size of all of the per-vertex data arrays.
    * The maximum value for this member is #AI_MAX_VERTICES.

</member>
<member name="F:aiMesh.mNumFaces" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="483">
The number of primitives (triangles, polygons, lines) in this  mesh.
    * This is also the size of the mFaces array.
    * The maximum value for this member is #AI_MAX_FACES.

</member>
<member name="F:aiMesh.mVertices" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="489">
Vertex positions.
    * This array is always present in a mesh. The array is
    * mNumVertices in size.

</member>
<member name="F:aiMesh.mNormals" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="495">
Vertex normals.
    * The array contains normalized vectors, NULL if not present.
    * The array is mNumVertices in size. Normals are undefined for
    * point and line primitives. A mesh consisting of points and
    * lines only may not have normal vectors. Meshes with mixed
    * primitive types (i.e. lines and triangles) may have normals,
    * but the normals for vertices that are only referenced by
    * point or line primitives are undefined and set to QNaN (WARN:
    * qNaN compares to inequal to *everything*, even to qNaN itself.
    * Using code like this to check whether a field is qnan is:
    * @code
    * #define IS_QNAN(f) (f != f)
    * @endcode
    * still dangerous because even 1.f == 1.f could evaluate to false! (
    * remember the subtleties of IEEE754 artithmetics). Use stuff like
    * @c fpclassify instead.
    * @note Normal vectors computed by Assimp are always unit-length.
    * However, this needn't apply for normals that have been taken
    *   directly from the model file.

</member>
<member name="F:aiMesh.mTangents" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="517">
Vertex tangents.
    * The tangent of a vertex points in the direction of the positive
    * X texture axis. The array contains normalized vectors, NULL if
    * not present. The array is mNumVertices in size. A mesh consisting
    * of points and lines only may not have normal vectors. Meshes with
    * mixed primitive types (i.e. lines and triangles) may have
    * normals, but the normals for vertices that are only referenced by
    * point or line primitives are undefined and set to qNaN.  See
    * the #mNormals member for a detailed discussion of qNaNs.
    * @note If the mesh contains tangents, it automatically also
    * contains bitangents.

</member>
<member name="F:aiMesh.mBitangents" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="531">
Vertex bitangents.
    * The bitangent of a vertex points in the direction of the positive
    * Y texture axis. The array contains normalized vectors, NULL if not
    * present. The array is mNumVertices in size.
    * @note If the mesh contains tangents, it automatically also contains
    * bitangents.

</member>
<member name="F:aiMesh.mColors" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="540">
Vertex color sets.
    * A mesh may contain 0 to #AI_MAX_NUMBER_OF_COLOR_SETS vertex
    * colors per vertex. NULL if not present. Each array is
    * mNumVertices in size if present.

</member>
<member name="F:aiMesh.mTextureCoords" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="547">
Vertex texture coords, also known as UV channels.
    * A mesh may contain 0 to AI_MAX_NUMBER_OF_TEXTURECOORDS per
    * vertex. NULL if not present. The array is mNumVertices in size.

</member>
<member name="F:aiMesh.mNumUVComponents" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="553">
Specifies the number of components for a given UV channel.
    * Up to three channels are supported (UVW, for accessing volume
    * or cube maps). If the value is 2 for a given channel n, the
    * component p.z of mTextureCoords[n][p] is set to 0.0f.
    * If the value is 1 for a given channel, p.y is set to 0.0f, too.
    * @note 4D coords are not supported

</member>
<member name="F:aiMesh.mFaces" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="562">
The faces the mesh is constructed from.
    * Each face refers to a number of vertices by their indices.
    * This array is always present in a mesh, its size is given
    * in mNumFaces. If the #AI_SCENE_FLAGS_NON_VERBOSE_FORMAT
    * is NOT set each face references an unique set of vertices.

</member>
<member name="F:aiMesh.mNumBones" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="570">
The number of bones this mesh contains.
    * Can be 0, in which case the mBones array is NULL.

</member>
<member name="F:aiMesh.mBones" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="575">
The bones of this mesh.
    * A bone consists of a name by which it can be found in the
    * frame hierarchy and a set of vertex weights.

</member>
<member name="F:aiMesh.mMaterialIndex" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="581">
The material used by this mesh.
     * A mesh uses only a single material. If an imported model uses
     * multiple materials, the import splits up the mesh. Use this value
     * as index into the scene's material list.

</member>
<member name="F:aiMesh.mName" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="588">
Name of the mesh. Meshes can be named, but this is not a
     *  requirement and leaving this field empty is totally fine.
     *  There are mainly three uses for mesh names:
     *   - some formats name nodes and meshes independently.
     *   - importers tend to split meshes up to meet the
     *      one-material-per-mesh requirement. Assigning
     *      the same (dummy) name to each of the result meshes
     *      aids the caller at recovering the original mesh
     *      partitioning.
     *   - Vertex animations refer to meshes by their names.
     *
</member>
<member name="F:aiMesh.mNumAnimMeshes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="602">
NOT CURRENTLY IN USE. The number of attachment meshes 
</member>
<member name="F:aiMesh.mAnimMeshes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\mesh.h" line="605">
NOT CURRENTLY IN USE. Attachment meshes for this mesh, for vertex-based animation.
     *  Attachment meshes carry replacement data for some of the
     *  mesh'es vertex components (usually positions, normals). 
</member>
<member name="F:_aiLightSource_Force32Bit" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="90">
This value is not used. It is just there to force the
     *  compiler to map this enum to a 32 Bit integer.

</member>
<member name="T:aiLightSourceType" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="42">
@file light.h
 *  @brief Defines the aiLight data structure

Enumerates all supported types of light sources.

</member>
<!-- Discarding badly formed XML document comment for member 'T:aiLight'. -->
<member name="F:aiLight.mName" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="113">
The name of the light source.
     *
     *  There must be a node in the scenegraph with the same name.
     *  This node specifies the position of the light in the scene
     *  hierarchy and can be animated.

</member>
<member name="F:aiLight.mType" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="121">
The type of the light source.
     *
     * aiLightSource_UNDEFINED is not a valid value for this member.

</member>
<member name="F:aiLight.mPosition" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="127">
Position of the light source in space. Relative to the
     *  transformation of the node corresponding to the light.
     *
     *  The position is undefined for directional lights.

</member>
<member name="F:aiLight.mDirection" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="134">
Direction of the light source in space. Relative to the
     *  transformation of the node corresponding to the light.
     *
     *  The direction is undefined for point lights. The vector
     *  may be normalized, but it needn't.

</member>
<member name="F:aiLight.mUp" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="142">
Up direction of the light source in space. Relative to the
     *  transformation of the node corresponding to the light.
     *
     *  The direction is undefined for point lights. The vector
     *  may be normalized, but it needn't.

</member>
<member name="F:aiLight.mAttenuationConstant" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="150">
Constant light attenuation factor.
     *
     *  The intensity of the light source at a given distance 'd' from
     *  the light's position is
     *  @code
     *  Atten = 1/( att0 + att1 * d + att2 * d*d)
     *  @endcode
     *  This member corresponds to the att0 variable in the equation.
     *  Naturally undefined for directional lights.

</member>
<member name="F:aiLight.mAttenuationLinear" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="162">
Linear light attenuation factor.
     *
     *  The intensity of the light source at a given distance 'd' from
     *  the light's position is
     *  @code
     *  Atten = 1/( att0 + att1 * d + att2 * d*d)
     *  @endcode
     *  This member corresponds to the att1 variable in the equation.
     *  Naturally undefined for directional lights.

</member>
<member name="F:aiLight.mAttenuationQuadratic" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="174">
Quadratic light attenuation factor.
     *
     *  The intensity of the light source at a given distance 'd' from
     *  the light's position is
     *  @code
     *  Atten = 1/( att0 + att1 * d + att2 * d*d)
     *  @endcode
     *  This member corresponds to the att2 variable in the equation.
     *  Naturally undefined for directional lights.

</member>
<member name="F:aiLight.mColorDiffuse" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="186">
Diffuse color of the light source
     *
     *  The diffuse light color is multiplied with the diffuse
     *  material color to obtain the final color that contributes
     *  to the diffuse shading term.

</member>
<member name="F:aiLight.mColorSpecular" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="194">
Specular color of the light source
     *
     *  The specular light color is multiplied with the specular
     *  material color to obtain the final color that contributes
     *  to the specular shading term.

</member>
<member name="F:aiLight.mColorAmbient" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="202">
Ambient color of the light source
     *
     *  The ambient light color is multiplied with the ambient
     *  material color to obtain the final color that contributes
     *  to the ambient shading term. Most renderers will ignore
     *  this value it, is just a remaining of the fixed-function pipeline
     *  that is still supported by quite many file formats.

</member>
<member name="F:aiLight.mAngleInnerCone" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="212">
Inner angle of a spot light's light cone.
     *
     *  The spot light has maximum influence on objects inside this
     *  angle. The angle is given in radians. It is 2PI for point
     *  lights and undefined for directional lights.

</member>
<member name="F:aiLight.mAngleOuterCone" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="220">
Outer angle of a spot light's light cone.
     *
     *  The spot light does not affect objects outside this angle.
     *  The angle is given in radians. It is 2PI for point lights and
     *  undefined for directional lights. The outer angle must be
     *  greater than or equal to the inner angle.
     *  It is assumed that the application uses a smooth
     *  interpolation between the inner and the outer cone of the
     *  spot light.

</member>
<member name="F:aiLight.mSize" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\light.h" line="232">
Size of area light source. 
</member>
<!-- Discarding badly formed XML document comment for member 'T:aiCamera'. -->
<member name="F:aiCamera.mName" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\camera.h" line="100">
The name of the camera.
     *
     *  There must be a node in the scenegraph with the same name.
     *  This node specifies the position of the camera in the scene
     *  hierarchy and can be animated.

</member>
<member name="F:aiCamera.mPosition" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\camera.h" line="108">
Position of the camera relative to the coordinate space
     *  defined by the corresponding node.
     *
     *  The default value is 0|0|0.

</member>
<member name="F:aiCamera.mUp" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\camera.h" line="116">
'Up' - vector of the camera coordinate system relative to
     *  the coordinate space defined by the corresponding node.
     *
     *  The 'right' vector of the camera coordinate system is
     *  the cross product of  the up and lookAt vectors.
     *  The default value is 0|1|0. The vector
     *  may be normalized, but it needn't.

</member>
<member name="F:aiCamera.mLookAt" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\camera.h" line="127">
'LookAt' - vector of the camera coordinate system relative to
     *  the coordinate space defined by the corresponding node.
     *
     *  This is the viewing direction of the user.
     *  The default value is 0|0|1. The vector
     *  may be normalized, but it needn't.

</member>
<member name="F:aiCamera.mHorizontalFOV" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\camera.h" line="137">
Half horizontal field of view angle, in radians.
     *
     *  The field of view angle is the angle between the center
     *  line of the screen and the left or right border.
     *  The default value is 1/4PI.

</member>
<member name="F:aiCamera.mClipPlaneNear" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\camera.h" line="145">
Distance of the near clipping plane from the camera.
     *
     * The value may not be 0.f (for arithmetic reasons to prevent
     * a division through zero). The default value is 0.1f.

</member>
<member name="F:aiCamera.mClipPlaneFar" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\camera.h" line="152">
Distance of the far clipping plane from the camera.
     *
     * The far clipping plane must, of course, be further away than the
     * near clipping plane. The default value is 1000.f. The ratio
     * between the near and the far plane should not be too
     * large (between 1000-10000 should be ok) to avoid floating-point
     * inaccuracies which could lead to z-fighting.

</member>
<member name="F:aiCamera.mAspect" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\camera.h" line="163">
Screen aspect ratio.
     *
     * This is the ration between the width and the height of the
     * screen. Typical values are 4/3, 1/2 or 1/1. This value is
     * 0 if the aspect ratio is not defined in the source file.
     * 0 is also the default value.

</member>
<member name="M:aiCamera.GetCameraMatrix(aiMatrix4x4t&lt;System.Single&gt;*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\camera.h" line="183">
@brief Get a *right-handed* camera matrix from me
     *  @param out Camera matrix to be filled

</member>
<member name="F:aiTextureOp_Multiply" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="79">
T = T1 * T2 
</member>
<member name="F:aiTextureOp_Add" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="82">
T = T1 + T2 
</member>
<member name="F:aiTextureOp_Subtract" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="85">
T = T1 - T2 
</member>
<member name="F:aiTextureOp_Divide" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="88">
T = T1 / T2 
</member>
<member name="F:aiTextureOp_SmoothAdd" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="91">
T = (T1 + T2) - (T1 * T2) 
</member>
<member name="F:aiTextureOp_SignedAdd" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="94">
T = T1 + (T2-0.5) 
</member>
<!-- Discarding badly formed XML document comment for member 'T:aiTextureOp'. -->
<member name="F:aiTextureMapMode_Wrap" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="110">
A texture coordinate u|v is translated to u%1|v%1

</member>
<member name="F:aiTextureMapMode_Clamp" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="114">
Texture coordinates outside [0...1]
     *  are clamped to the nearest valid value.

</member>
<member name="F:aiTextureMapMode_Decal" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="119">
If the texture coordinates for a pixel are outside [0...1]
     *  the texture is not applied to that pixel

</member>
<member name="F:aiTextureMapMode_Mirror" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="124">
A texture coordinate u|v becomes u%1|v%1 if (u-(u%1))%2 is zero and
     *  1-(u%1)|1-(v%1) otherwise

</member>
<member name="T:aiTextureMapMode" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="104">
@brief Defines how UV coordinates outside the [0...1] range are handled.
 *
 *  Commonly referred to as 'wrapping mode'.

</member>
<member name="F:aiTextureMapping_UV" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="145">
The mapping coordinates are taken from an UV channel.
     *
     *  The #AI_MATKEY_UVWSRC key specifies from which UV channel
     *  the texture coordinates are to be taken from (remember,
     *  meshes can have more than one UV channel).

</member>
<member name="F:aiTextureMapping_SPHERE" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="153">
Spherical mapping 
</member>
<member name="F:aiTextureMapping_CYLINDER" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="156">
Cylindrical mapping 
</member>
<member name="F:aiTextureMapping_BOX" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="159">
Cubic mapping 
</member>
<member name="F:aiTextureMapping_PLANE" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="162">
Planar mapping 
</member>
<member name="F:aiTextureMapping_OTHER" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="165">
Undefined mapping. Have fun. 
</member>
<member name="T:aiTextureMapping" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="135">
@brief Defines how the mapping coords for a texture are generated.
 *
 *  Real-time applications typically require full UV coordinates, so the use of
 *  the aiProcess_GenUVCoords step is highly recommended. It generates proper
 *  UV channels for non-UV mapped objects, as long as an accurate description
 *  how the mapping should look like (e.g spherical) is given.
 *  See the #AI_MATKEY_MAPPING property for more details.

</member>
<member name="F:aiTextureType_NONE" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="191">
Dummy value.
     *
     *  No texture, but the value to be used as 'texture semantic'
     *  (#aiMaterialProperty::mSemantic) for all material properties
     *  *not* related to textures.

</member>
<member name="F:aiTextureType_DIFFUSE" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="201">
The texture is combined with the result of the diffuse
     *  lighting equation.

</member>
<member name="F:aiTextureType_SPECULAR" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="206">
The texture is combined with the result of the specular
     *  lighting equation.

</member>
<member name="F:aiTextureType_AMBIENT" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="211">
The texture is combined with the result of the ambient
     *  lighting equation.

</member>
<member name="F:aiTextureType_EMISSIVE" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="216">
The texture is added to the result of the lighting
     *  calculation. It isn't influenced by incoming light.

</member>
<member name="F:aiTextureType_HEIGHT" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="221">
The texture is a height map.
     *
     *  By convention, higher gray-scale values stand for
     *  higher elevations from the base height.

</member>
<member name="F:aiTextureType_NORMALS" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="228">
The texture is a (tangent space) normal-map.
     *
     *  Again, there are several conventions for tangent-space
     *  normal maps. Assimp does (intentionally) not
     *  distinguish here.

</member>
<member name="F:aiTextureType_SHININESS" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="236">
The texture defines the glossiness of the material.
     *
     *  The glossiness is in fact the exponent of the specular
     *  (phong) lighting equation. Usually there is a conversion
     *  function defined to map the linear color values in the
     *  texture to a suitable exponent. Have fun.

</member>
<member name="F:aiTextureType_OPACITY" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="245">
The texture defines per-pixel opacity.
     *
     *  Usually 'white' means opaque and 'black' means
     *  'transparency'. Or quite the opposite. Have fun.

</member>
<member name="F:aiTextureType_DISPLACEMENT" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="252">
Displacement texture
     *
     *  The exact purpose and format is application-dependent.
     *  Higher color values stand for higher vertex displacements.

</member>
<member name="F:aiTextureType_LIGHTMAP" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="259">
Lightmap texture (aka Ambient Occlusion)
     *
     *  Both 'Lightmaps' and dedicated 'ambient occlusion maps' are
     *  covered by this material property. The texture contains a
     *  scaling value for the final color value of a pixel. Its
     *  intensity is not affected by incoming light.

</member>
<member name="F:aiTextureType_REFLECTION" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="268">
Reflection texture
     *
     * Contains the color of a perfect mirror reflection.
     * Rarely used, almost never for real-time applications.

</member>
<member name="F:aiTextureType_UNKNOWN" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="275">
Unknown texture
     *
     *  A texture reference that does not match any of the definitions
     *  above is considered to be 'unknown'. It is still imported,
     *  but is excluded from any further postprocessing.

</member>
<!-- Discarding badly formed XML document comment for member 'T:aiTextureType'. -->
<member name="F:aiShadingMode_Flat" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="305">
Flat shading. Shading is done on per-face base,
     *  diffuse only. Also known as 'faceted shading'.

</member>
<member name="F:aiShadingMode_Gouraud" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="310">
Simple Gouraud shading.

</member>
<member name="F:aiShadingMode_Phong" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="314">
Phong-Shading -

</member>
<member name="F:aiShadingMode_Blinn" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="318">
Phong-Blinn-Shading

</member>
<member name="F:aiShadingMode_Toon" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="322">
Toon-Shading per pixel
     *
     *  Also known as 'comic' shader.

</member>
<member name="F:aiShadingMode_OrenNayar" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="328">
OrenNayar-Shading per pixel
     *
     *  Extension to standard Lambertian shading, taking the
     *  roughness of the material into account

</member>
<member name="F:aiShadingMode_Minnaert" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="335">
Minnaert-Shading per pixel
     *
     *  Extension to standard Lambertian shading, taking the
     *  "darkness" of the material into account

</member>
<member name="F:aiShadingMode_CookTorrance" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="342">
CookTorrance-Shading per pixel
     *
     *  Special shader for metallic surfaces.

</member>
<member name="F:aiShadingMode_NoShading" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="348">
No shading at all. Constant light influence of 1.0.

</member>
<member name="F:aiShadingMode_Fresnel" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="352">
Fresnel shading

</member>
<!-- Discarding badly formed XML document comment for member 'T:aiShadingMode'. -->
<member name="F:aiTextureFlags_Invert" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="376">
The texture's color values have to be inverted (componentwise 1-n)

</member>
<member name="F:aiTextureFlags_UseAlpha" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="380">
Explicit request to the application to process the alpha channel
     *  of the texture.
     *
     *  Mutually exclusive with #aiTextureFlags_IgnoreAlpha. These
     *  flags are set if the library can say for sure that the alpha
     *  channel is used/is not used. If the model format does not
     *  define this, it is left to the application to decide whether
     *  the texture alpha channel - if any - is evaluated or not.

</member>
<member name="F:aiTextureFlags_IgnoreAlpha" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="391">
Explicit request to the application to ignore the alpha channel
     *  of the texture.
     *
     *  Mutually exclusive with #aiTextureFlags_UseAlpha.

</member>
<member name="T:aiTextureFlags" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="364">
@brief Defines some mixed flags for a particular texture.
 *
 *  Usually you'll instruct your cg artists how textures have to look like ...
 *  and how they will be processed in your application. However, if you use
 *  Assimp for completely generic loading purposes you might also need to
 *  process these flags in order to display as many 'unknown' 3D models as
 *  possible correctly.
 *
 *  This corresponds to the #AI_MATKEY_TEXFLAGS property.

</member>
<member name="F:aiBlendMode_Default" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="422">
Formula:
@code
SourceColor*SourceAlpha + DestColor*(1-SourceAlpha)
@endcode

</member>
<member name="F:aiBlendMode_Additive" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="430">
Additive blending
     *
     *  Formula:
     *  @code
     *  SourceColor*1 + DestColor*1
     *  @endcode

</member>
<!-- Discarding badly formed XML document comment for member 'T:aiBlendMode'. -->
<member name="T:aiUVTransform" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="451">
@brief Defines how an UV channel is transformed.
 *
 *  This is just a helper structure for the #AI_MATKEY_UVTRANSFORM key.
 *  See its documentation for more details.
 *
 *  Typically you'll want to build a matrix of this information. However,
 *  we keep separate scaling/translation/rotation values to make it
 *  easier to process and optimize UV transformations internally.

</member>
<member name="F:aiUVTransform.mTranslation" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="462">
Translation on the u and v axes.
     *
     *  The default value is (0|0).

</member>
<member name="F:aiUVTransform.mScaling" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="468">
Scaling on the u and v axes.
     *
     *  The default value is (1|1).

</member>
<member name="F:aiUVTransform.mRotation" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="474">
Rotation - in counter-clockwise direction.
     *
     *  The rotation angle is specified in radians. The
     *  rotation center is 0.5f|0.5f. The default value
     *  0.f.

</member>
<member name="F:aiPTI_Float" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="503">
Array of single-precision (32 Bit) floats
     *
     *  It is possible to use aiGetMaterialInteger[Array]() (or the C++-API
     *  aiMaterial::Get()) to query properties stored in floating-point format.
     *  The material system performs the type conversion automatically.

</member>
<member name="F:aiPTI_String" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="511">
The material property is an aiString.
     *
     *  Arrays of strings aren't possible, aiGetMaterialString() (or the
     *  C++-API aiMaterial::Get()) *must* be used to query a string property.

</member>
<member name="F:aiPTI_Integer" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="518">
Array of (32 Bit) integers
     *
     *  It is possible to use aiGetMaterialFloat[Array]() (or the C++-API
     *  aiMaterial::Get()) to query properties stored in integer format.
     *  The material system performs the type conversion automatically.

</member>
<member name="F:aiPTI_Buffer" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="527">
Simple binary buffer, content undefined. Not convertible to anything.

</member>
<member name="F:_aiPTI_Force32Bit" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="532">
This value is not used. It is just there to force the
     *  compiler to map this enum to a 32 Bit integer.

</member>
<member name="T:aiPropertyTypeInfo" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="498">
@brief A very primitive RTTI system for the contents of material
 *  properties.

</member>
<!-- Discarding badly formed XML document comment for member 'T:aiMaterialProperty'. -->
<member name="F:aiMaterialProperty.mKey" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="562">
Specifies the name of the property (key)
     *  Keys are generally case insensitive.

</member>
<member name="F:aiMaterialProperty.mSemantic" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="567">
Textures: Specifies their exact usage semantic.
     * For non-texture properties, this member is always 0
     * (or, better-said, #aiTextureType_NONE).

</member>
<member name="F:aiMaterialProperty.mIndex" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="573">
Textures: Specifies the index of the texture.
     *  For non-texture properties, this member is always 0.

</member>
<member name="F:aiMaterialProperty.mDataLength" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="578">
Size of the buffer mData is pointing to, in bytes.
     *  This value may not be 0.

</member>
<member name="F:aiMaterialProperty.mType" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="583">
Type information for the property.
     *
     * Defines the data layout inside the data buffer. This is used
     * by the library internally to perform debug checks and to
     * utilize proper type conversions.
     * (It's probably a hacky solution, but it works.)

</member>
<member name="F:aiMaterialProperty.mData" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="592">
Binary buffer to hold the property's value.
     * The size of the buffer is always mDataLength.

</member>
<member name="T:aiMaterial" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="621">
@brief Data structure for a material
*
*  Material data is stored using a key-value structure. A single key-value
*  pair is called a 'material property'. C++ users should use the provided
*  member functions of aiMaterial to process material properties, C users
*  have to stick with the aiMaterialGetXXX family of unbound functions.
*  The library defines a set of standard keys (AI_MATKEY_XXX).

</member>
<member name="M:aiMaterial.GetTextureCount(aiTextureType)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="699">
Get the number of textures for a particular texture type.
     *  @param type Texture type to check for
     *  @return Number of textures for this type.
     *  @note A texture can be easily queried using #GetTexture() 
</member>
<member name="M:aiMaterial.GetTexture(aiTextureType,System.UInt32,aiString*,aiTextureMapping*,System.UInt32*,System.Single*,aiTextureOp*,aiTextureMapMode*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="706">
Helper function to get all parameters pertaining to a
     *  particular texture slot from a material.
    *
    *  This function is provided just for convenience, you could also
    *  read the single material properties manually.
    *  @param type Specifies the type of the texture to be retrieved (
    *    e.g. diffuse, specular, height map ...)
    *  @param index Index of the texture to be retrieved. The function fails
    *    if there is no texture of that type with this index.
    *    #GetTextureCount() can be used to determine the number of textures
    *    per texture type.
    *  @param path Receives the path to the texture.
    *    NULL is a valid value.
   *  @param mapping The texture mapping.
   *        NULL is allowed as value.
    *  @param uvindex Receives the UV index of the texture.
    *    NULL is a valid value.
    *  @param blend Receives the blend factor for the texture
    *    NULL is a valid value.
    *  @param op Receives the texture operation to be performed between
    *    this texture and the previous texture. NULL is allowed as value.
    *  @param mapmode Receives the mapping modes to be used for the texture.
    *    The parameter may be NULL but if it is a valid pointer it MUST
    *    point to an array of 3 aiTextureMapMode's (one for each
    *    axis: UVW order (=XYZ)).

</member>
<member name="M:aiMaterial.AddBinaryProperty(System.Void!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.UInt32,aiPropertyTypeInfo)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="747">
@brief Add a property with a given key and type info to the material
     *  structure
     *
     *  @param pInput Pointer to input data
     *  @param pSizeInBytes Size of input data
     *  @param pKey Key/Usage of the property (AI_MATKEY_XXX)
     *  @param type Set by the AI_MATKEY_XXX macro
     *  @param index Set by the AI_MATKEY_XXX macro
     *  @param pType Type information hint 
</member>
<member name="M:aiMaterial.AddProperty(aiString!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="764">
@brief Add a string property with a given key and type info to the
     *  material structure
     *
     *  @param pInput Input string
     *  @param pKey Key/Usage of the property (AI_MATKEY_XXX)
     *  @param type Set by the AI_MATKEY_XXX macro
     *  @param index Set by the AI_MATKEY_XXX macro 
</member>
<member name="M:aiMaterial.RemoveProperty(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="827">
@brief Remove a given key from the list.
     *
     *  The function fails if the key isn't found
     *  @param pKey Key to be deleted
     *  @param type Set by the AI_MATKEY_XXX macro
     *  @param index Set by the AI_MATKEY_XXX macro  
</member>
<member name="M:aiMaterial.Clear" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="838">
@brief Removes all properties from the material.
     *
     *  The data array remains allocated so adding new properties is quite fast.  
</member>
<member name="M:aiMaterial.CopyPropertyList(aiMaterial*,aiMaterial!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="844">
Copy the property list of a material
     *  @param pcDest Destination material
     *  @param pcSrc Source material

</member>
<member name="F:aiMaterial.mProperties" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="854">
List of all material properties loaded. 
</member>
<member name="F:aiMaterial.mNumProperties" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="857">
Number of properties in the data base 
</member>
<member name="F:aiMaterial.mNumAllocated" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="860">
Storage allocated 
</member>
<member name="M:aiGetMaterialProperty(aiMaterial!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.UInt32,aiMaterialProperty!System.Runtime.CompilerServices.IsConst**)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="1303">
@brief Retrieve a material property with a specific key from the material
 *
 * @param pMat Pointer to the input material. May not be NULL
 * @param pKey Key to search for. One of the AI_MATKEY_XXX constants.
 * @param type Specifies the type of the texture to be retrieved (
 *    e.g. diffuse, specular, height map ...)
 * @param index Index of the texture to be retrieved.
 * @param pPropOut Pointer to receive a pointer to a valid aiMaterialProperty
 *        structure or NULL if the key has not been found. 
</member>
<!-- Discarding badly formed XML document comment for member 'M:aiGetMaterialFloatArray(aiMaterial!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.UInt32,System.Single*,System.UInt32*)'. -->
<!-- Discarding badly formed XML document comment for member 'M:aiGetMaterialFloat(aiMaterial!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.UInt32,System.Single*)'. -->
<member name="M:aiGetMaterialIntegerArray(aiMaterial!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.UInt32,System.Int32*,System.UInt32*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="1395">
@brief Retrieve an array of integer values with a specific key
 *  from a material
 *
 * See the sample for aiGetMaterialFloatArray for more information.
</member>
<member name="M:aiGetMaterialInteger(aiMaterial!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.UInt32,System.Int32*)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="1410">
@brief Retrieve an integer property with a specific key from a material
 *
 * See the sample for aiGetMaterialFloat for more information.
</member>
<member name="M:aiGetMaterialColor(aiMaterial!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.UInt32,aiColor4t&lt;System.Single&gt;*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="1434">
@brief Retrieve a color value from the material property table
*
* See the sample for aiGetMaterialFloat for more information
</member>
<member name="M:aiGetMaterialUVTransform(aiMaterial!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.UInt32,aiUVTransform*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="1446">
@brief Retrieve a aiUVTransform value from the material property table
*
* See the sample for aiGetMaterialFloat for more information
</member>
<member name="M:aiGetMaterialString(aiMaterial!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.UInt32,aiString*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="1458">
@brief Retrieve a string from the material property table
*
* See the sample for aiGetMaterialFloat for more information.
</member>
<member name="M:aiGetMaterialTextureCount(aiMaterial!System.Runtime.CompilerServices.IsConst*,aiTextureType)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="1469">
Get the number of textures for a particular texture type.
 *  @param[in] pMat Pointer to the input material. May not be NULL
 *  @param type Texture type to check for
 *  @return Number of textures for this type.
 *  @note A texture can be easily queried using #aiGetMaterialTexture() 
</member>
<member name="M:aiGetMaterialTexture(aiMaterial!System.Runtime.CompilerServices.IsConst*,aiTextureType,System.UInt32,aiString*,aiTextureMapping*,System.UInt32*,System.Single*,aiTextureOp*,aiTextureMapMode*,System.UInt32*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.h" line="1479">
@brief Helper function to get all values pertaining to a particular
 *  texture slot from a material structure.
 *
 *  This function is provided just for convenience. You could also read the
 *  texture by parsing all of its properties manually. This function bundles
 *  all of them in a huge function monster.
 *
 *  @param[in] mat Pointer to the input material. May not be NULL
 *  @param[in] type Specifies the texture stack to read from (e.g. diffuse,
 *     specular, height map ...).
 *  @param[in] index Index of the texture. The function fails if the
 *     requested index is not available for this texture type.
 *     #aiGetMaterialTextureCount() can be used to determine the number of
 *     textures in a particular texture stack.
 *  @param[out] path Receives the output path
 *      This parameter must be non-null.
 *  @param mapping The texture mapping mode to be used.
 *      Pass NULL if you're not interested in this information.
 *  @param[out] uvindex For UV-mapped textures: receives the index of the UV
 *      source channel. Unmodified otherwise.
 *      Pass NULL if you're not interested in this information.
 *  @param[out] blend Receives the blend factor for the texture
 *      Pass NULL if you're not interested in this information.
 *  @param[out] op Receives the texture blend operation to be perform between
 *      this texture and the previous texture.
 *      Pass NULL if you're not interested in this information.
 *  @param[out] mapmode Receives the mapping modes to be used for the texture.
 *      Pass NULL if you're not interested in this information. Otherwise,
 *      pass a pointer to an array of two aiTextureMapMode's (one for each
 *      axis, UV order).
 *  @param[out] flags Receives the the texture flags.
 *  @return AI_SUCCESS on success, otherwise something else. Have fun.
</member>
<member name="M:aiMaterial.GetTexture(aiTextureType,System.UInt32,aiString*,aiTextureMapping*,System.UInt32*,System.Single*,aiTextureOp*,aiTextureMapMode*)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\material.inl" line="42">
@file material.inl
 *  @brief Defines the C++ getters for the material system

</member>
<member name="T:aiVectorKey" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="42">
@file anim.h
 *  @brief Defines the data structures in which the imported animations
 *  are returned.

A time-value pair specifying a certain 3D vector for the given time. 
</member>
<member name="F:aiVectorKey.mTime" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="60">
The time of this key 
</member>
<member name="F:aiVectorKey.mValue" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="63">
The value of this key 
</member>
<member name="T:aiQuatKey" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="99">
A time-value pair specifying a rotation for the given time.
 *  Rotations are expressed with quaternions. 
</member>
<member name="F:aiQuatKey.mTime" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="103">
The time of this key 
</member>
<member name="F:aiQuatKey.mValue" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="106">
The value of this key 
</member>
<member name="M:aiQuatKey.#ctor(System.Double,aiQuaterniont&lt;System.Single&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="113">
Construction from a given time and key value 
</member>
<member name="T:aiMeshKey" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="140">
Binds a anim mesh to a specific point in time. 
</member>
<member name="F:aiMeshKey.mTime" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="143">
The time of this key 
</member>
<member name="F:aiMeshKey.mValue" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="146">
Index into the aiMesh::mAnimMeshes array of the
     *  mesh coresponding to the #aiMeshAnim hosting this
     *  key frame. The referenced anim mesh is evaluated
     *  according to the rules defined in the docs for #aiAnimMesh.
</member>
<member name="M:aiMeshKey.#ctor(System.Double,System.UInt32!System.Runtime.CompilerServices.IsConst)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="157">
Construction from a given time and key value 
</member>
<member name="F:aiAnimBehaviour_DEFAULT" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="190">
The value from the default node transformation is taken
</member>
<member name="F:aiAnimBehaviour_CONSTANT" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="193">
The nearest key value is used without interpolation 
</member>
<member name="F:aiAnimBehaviour_LINEAR" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="196">
The value of the nearest two keys is linearly
     *  extrapolated for the current time value.
</member>
<member name="F:aiAnimBehaviour_REPEAT" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="200">
The animation is repeated.
     *
     *  If the animation key go from n to m and the current
     *  time is t, use the value at (t-n) % (|m-n|).
</member>
<member name="F:_aiAnimBehaviour_Force32Bit" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="208">
This value is not used, it is just here to force the
     *  the compiler to map this enum to a 32 Bit integer  
</member>
<member name="T:aiAnimBehaviour" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="185">
Defines how an animation channel behaves outside the defined time
 *  range. This corresponds to aiNodeAnim::mPreState and
 *  aiNodeAnim::mPostState.
</member>
<member name="T:aiNodeAnim" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="216">
Describes the animation of a single node. The name specifies the
 *  bone/node which is affected by this animation channel. The keyframes
 *  are given in three separate series of values, one each for position,
 *  rotation and scaling. The transformation matrix computed from these
 *  values replaces the node's original transformation matrix at a
 *  specific time.
 *  This means all keys are absolute and not relative to the bone default pose.
 *  The order in which the transformations are applied is
 *  - as usual - scaling, rotation, translation.
 *
 *  @note All keys are returned in their correct, chronological order.
 *  Duplicate keys don't pass the validation step. Most likely there
 *  will be no negative time values, but they are not forbidden also ( so
 *  implementations need to cope with them! ) 
</member>
<member name="F:aiNodeAnim.mNodeName" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="232">
The name of the node affected by this animation. The node
     *  must exist and it must be unique.
</member>
<member name="F:aiNodeAnim.mNumPositionKeys" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="236">
The number of position keys 
</member>
<member name="F:aiNodeAnim.mPositionKeys" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="239">
The position keys of this animation channel. Positions are
     * specified as 3D vector. The array is mNumPositionKeys in size.
     *
     * If there are position keys, there will also be at least one
     * scaling and one rotation key.
</member>
<member name="F:aiNodeAnim.mNumRotationKeys" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="246">
The number of rotation keys 
</member>
<member name="F:aiNodeAnim.mRotationKeys" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="249">
The rotation keys of this animation channel. Rotations are
     *  given as quaternions,  which are 4D vectors. The array is
     *  mNumRotationKeys in size.
     *
     * If there are rotation keys, there will also be at least one
     * scaling and one position key. 
</member>
<member name="F:aiNodeAnim.mNumScalingKeys" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="258">
The number of scaling keys 
</member>
<member name="F:aiNodeAnim.mScalingKeys" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="261">
The scaling keys of this animation channel. Scalings are
     *  specified as 3D vector. The array is mNumScalingKeys in size.
     *
     * If there are scaling keys, there will also be at least one
     * position and one rotation key.
</member>
<member name="F:aiNodeAnim.mPreState" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="269">
Defines how the animation behaves before the first
     *  key is encountered.
     *
     *  The default value is aiAnimBehaviour_DEFAULT (the original
     *  transformation matrix of the affected node is used).
</member>
<member name="F:aiNodeAnim.mPostState" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="276">
Defines how the animation behaves after the last
     *  key was processed.
     *
     *  The default value is aiAnimBehaviour_DEFAULT (the original
     *  transformation matrix of the affected node is taken).
</member>
<member name="T:aiMeshAnim" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="303">
Describes vertex-based animations for a single mesh or a group of
 *  meshes. Meshes carry the animation data for each frame in their
 *  aiMesh::mAnimMeshes array. The purpose of aiMeshAnim is to
 *  define keyframes linking each mesh attachment to a particular
 *  point in time. 
</member>
<member name="F:aiMeshAnim.mName" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="310">
Name of the mesh to be animated. An empty string is not allowed,
     *  animated meshes need to be named (not necessarily uniquely,
     *  the name can basically serve as wildcard to select a group
     *  of meshes with similar animation setup)
</member>
<member name="F:aiMeshAnim.mNumKeys" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="316">
Size of the #mKeys array. Must be 1, at least. 
</member>
<member name="F:aiMeshAnim.mKeys" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="319">
Key frames of the animation. May not be NULL. 
</member>
<member name="T:aiAnimation" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="338">
An animation consists of keyframe data for a number of nodes. For
 *  each node affected by the animation a separate series of data is given.
</member>
<member name="F:aiAnimation.mName" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="342">
The name of the animation. If the modeling package this data was
     *  exported from does support only a single animation channel, this
     *  name is usually empty (length is zero). 
</member>
<member name="F:aiAnimation.mDuration" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="347">
Duration of the animation in ticks.  
</member>
<member name="F:aiAnimation.mTicksPerSecond" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="350">
Ticks per second. 0 if not specified in the imported file 
</member>
<member name="F:aiAnimation.mNumChannels" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="353">
The number of bone animation channels. Each channel affects
     *  a single node. 
</member>
<member name="F:aiAnimation.mChannels" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="357">
The node animation channels. Each channel affects a single node.
     *  The array is mNumChannels in size. 
</member>
<member name="F:aiAnimation.mNumMeshChannels" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="362">
The number of mesh animation channels. Each channel affects
     *  a single mesh and defines vertex-based animation. 
</member>
<member name="F:aiAnimation.mMeshChannels" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\anim.h" line="366">
The mesh animation channels. Each channel affects a single mesh.
     *  The array is mNumMeshChannels in size. 
</member>
<member name="T:aiMetadataType" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\metadata.h" line="60">
Enum used to distinguish data types

</member>
<member name="T:aiMetadataEntry" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\metadata.h" line="81">
 Metadata entry

 The type field uniquely identifies the underlying type of the data field

</member>
<member name="M:GetAiType(System.Boolean)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\metadata.h" line="102">
Helper functions to get the aiType enum entry for a type

</member>
<member name="T:aiMetadata" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\metadata.h" line="120">
 Container for holding metadata.

 Metadata is a key-value store using string keys and values.

</member>
<member name="F:aiMetadata.mNumProperties" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\metadata.h" line="128">
Length of the mKeys and mValues arrays, respectively 
</member>
<member name="F:aiMetadata.mKeys" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\metadata.h" line="131">
Arrays of keys, may not be NULL. Entries in this array may not be NULL as well. 
</member>
<member name="F:aiMetadata.mValues" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\metadata.h" line="134">
Arrays of values, may not be NULL. Entries in this array may be NULL if the
      * corresponding property key has no assigned value. 
</member>
<member name="M:aiMetadata.#ctor" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\metadata.h" line="140">
Constructor 
</member>
<member name="M:aiMetadata.Dispose" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\metadata.h" line="149">
Destructor 
</member>
<member name="T:aiNode" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="63">
A node in the imported hierarchy.
 *
 * Each node has name, a parent node (except for the root node),
 * a transformation relative to its parent and possibly several child nodes.
 * Simple file formats don't support hierarchical structures - for these formats
 * the imported scene does consist of only a single root node without children.

</member>
<!-- Discarding badly formed XML document comment for member 'F:aiNode.mName'. -->
<member name="F:aiNode.mTransformation" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="97">
The transformation relative to the node's parent. 
</member>
<member name="F:aiNode.mParent" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="100">
Parent node. NULL if this node is the root node. 
</member>
<member name="F:aiNode.mNumChildren" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="103">
The number of child nodes of this node. 
</member>
<member name="F:aiNode.mChildren" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="106">
The child nodes of this node. NULL if mNumChildren is 0. 
</member>
<member name="F:aiNode.mNumMeshes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="109">
The number of meshes of this node. 
</member>
<member name="F:aiNode.mMeshes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="112">
The meshes of this node. Each entry is an index into the 
      * mesh list of the #aiScene.

</member>
<member name="F:aiNode.mMetaData" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="117">
Metadata associated with this node or NULL if there is no metadata.
      *  Whether any metadata is generated depends on the source file format. See the
      * @link importer_notes @endlink page for more information on every source file
      * format. Importers that don't document any metadata don't write any.

</member>
<member name="M:aiNode.#ctor" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="125">
Constructor 
</member>
<member name="M:aiNode.#ctor(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="139">
Construction from a specific name 
</member>
<member name="M:aiNode.Dispose" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="152">
Destructor 
</member>
<member name="M:aiNode.FindNode(aiString!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="168">
Searches for a node with a specific name, beginning at this
     *  nodes. Normally you will call this method on the root node
     *  of the scene.
     *
     *  @param name Name to search for
     *  @return NULL or a valid Node if the search was successful.

</member>
<member name="T:aiScene" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="220">
Specifies that the scene data structure that was imported is not complete.
This flag bypasses some internal validations and allows the import
of animation skeletons, material libraries or camera animation paths
using Assimp. Most applications won't support such data.

This flag is set by the validation postprocess-step (aiPostProcess_ValidateDS)
if the validation is successful. In a validated scene you can be sure that
any cross references in the data structure (e.g. vertex indices) are valid.

This flag is set by the validation postprocess-step (aiPostProcess_ValidateDS)
if the validation is successful but some issues have been found.
This can for example mean that a texture that does not exist is referenced
by a material or that the bone weights for a vertex don't sum to 1.0 ... .
In most cases you should still be able to use the import. This flag could
be useful for applications which don't capture Assimp's log output.

This flag is currently only set by the aiProcess_JoinIdenticalVertices step.
It indicates that the vertices of the output meshes aren't in the internal
verbose format anymore. In the verbose format all vertices are unique,
no vertex is ever referenced by more than one face.

 Denotes pure height-map terrain data. Pure terrains usually consist of quads,
 sometimes triangles, in a regular grid. The x,y coordinates of all vertex
 positions refer to the x,y coordinates on the terrain height map, the z-axis
 stores the elevation at a specific point.

 TER (Terragen) and HMP (3D Game Studio) are height map formats.
 @note Assimp is probably not the best choice for loading *huge* terrains -
 fully triangulated data takes extremely much free store and should be avoided
 as long as possible (typically you'll do the triangulation when you actually
 need to render it).

The root structure of the imported data.
 *
 *  Everything that was imported from the given file can be accessed from here.
 *  Objects of this class are generally maintained and owned by Assimp, not
 *  by the caller. You shouldn't want to instance it, nor should you ever try to
 *  delete a given scene on your own.

</member>
<member name="F:aiScene.mFlags" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="280">
Any combination of the AI_SCENE_FLAGS_XXX flags. By default
    * this value is 0, no flags are set. Most applications will
    * want to reject all scenes with the AI_SCENE_FLAGS_INCOMPLETE
    * bit set.

</member>
<member name="F:aiScene.mRootNode" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="288">
The root node of the hierarchy.
    *
    * There will always be at least the root node if the import
    * was successful (and no special flags have been set).
    * Presence of further nodes depends on the format and content
    * of the imported file.

</member>
<member name="F:aiScene.mNumMeshes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="299">
The number of meshes in the scene. 
</member>
<member name="F:aiScene.mMeshes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="302">
The array of meshes.
    *
    * Use the indices given in the aiNode structure to access
    * this array. The array is mNumMeshes in size. If the
    * AI_SCENE_FLAGS_INCOMPLETE flag is not set there will always
    * be at least ONE material.

</member>
<member name="F:aiScene.mNumMaterials" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="313">
The number of materials in the scene. 
</member>
<member name="F:aiScene.mMaterials" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="316">
The array of materials.
    *
    * Use the index given in each aiMesh structure to access this
    * array. The array is mNumMaterials in size. If the
    * AI_SCENE_FLAGS_INCOMPLETE flag is not set there will always
    * be at least ONE material.

</member>
<member name="F:aiScene.mNumAnimations" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="327">
The number of animations in the scene. 
</member>
<member name="F:aiScene.mAnimations" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="330">
The array of animations.
    *
    * All animations imported from the given file are listed here.
    * The array is mNumAnimations in size.

</member>
<member name="F:aiScene.mNumTextures" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="339">
The number of textures embedded into the file 
</member>
<member name="F:aiScene.mTextures" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="342">
The array of embedded textures.
    *
    * Not many file formats embed their textures into the file.
    * An example is Quake's MDL format (which is also used by
    * some GameStudio versions)

</member>
<member name="F:aiScene.mNumLights" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="351">
The number of light sources in the scene. Light sources
    * are fully optional, in most cases this attribute will be 0

</member>
<member name="F:aiScene.mLights" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="356">
The array of light sources.
    *
    * All light sources imported from the given file are
    * listed here. The array is mNumLights in size.

</member>
<member name="F:aiScene.mNumCameras" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="364">
The number of cameras in the scene. Cameras
    * are fully optional, in most cases this attribute will be 0

</member>
<member name="F:aiScene.mCameras" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="369">
The array of cameras.
    *
    * All cameras imported from the given file are listed here.
    * The array is mNumCameras in size. The first camera in the
    * array (if existing) is the default camera view into
    * the scene.

</member>
<member name="F:aiScene.mPrivate" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\contrib\assimp3.3.1\include\assimp\scene.h" line="415">
Internal data, do not touch 
</member>
<member name="D:ILenum" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="1">
----------------------------------------------------------
 * \class VSResourceLib
 *
 * Lighthouse3D
 *
 * VSResourceLib - Very Simple Resource Library
 *
 * \version 0.1.4
 *		Added Materials from teapots.c
 *		https://www.sgi.com/products/software/opengl/examples/redbook/source/teapots.c
 *
 * \version 0.1.3
 *		setting the material block name is now a static function
 *
 * \version 0.1.2
 *		The library can be made independent of DevIL (without texturing capabilities though)
 *
 * \version 0.1.1
 *		Added virtual function load cubemaps
 *		Added virtual function to set a preloaded texture
 *
 * version 0.1.0
 *		Initial Release
 *
 * This abstract class defines an interface 
 * for loading and rendering resources (models)
 *
 * This lib requires the following classes from VSL:
 * (http://www.lighthouse3d.com/very-simple-libs)
 *
 * VSMathLib 
 * VSLogLib
 * VSShaderLib
 *
 * and the following third party libs:
 *
 * GLEW (http://glew.sourceforge.net/),
 * DevIL (http://openil.sourceforge.net/) (optional)
 *
 * Full documentation at 
 * http://www.lighthouse3d.com/very-simple-libs
 *
 ---------------------------------------------------------------
</member>
<member name="T:VSMathLib" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="1">
----------------------------------------------------------
 * \class VSMathLib
 *
 * Lighthouse3D
 *
 * VSMathLib - Very Simple Matrix Library
 *
 * Full documentation at 
 * http://www.lighthouse3d.com/very-simple-libs
 *
 * This class aims at easing geometric transforms, camera
 * placement and projection definition for programmers
 * working with OpenGL core versions.
 *
 * \version 0.2.4 (22-11-2016)
 *		Added a method to perform point matrix multiplication

 * \version 0.2.3 (03-06-2013)
 *		Fixed a bug that appeared with nVidia drivers
 *			it only affected blocks
 *
 * \version 0.2.2
 *		Added a normal matrix based only in the view matrix
 *		Added a normal matrix based only in the model matrix
 *
 * \version 0.2.1
 *		Split MODELVIEW into MODEL and VIEW
 *			VIEW_MODEL is now a computed matrix
 *		Removed ALWAYS_SEND_TO_GL
 *
 * \version 0.2.0
 *		Added derived matrices
 *			Projection View Model
 *			Normal
 *		Added vector operations
 *		Library is now called vsMathLib
 *
 * \version 0.1.1
 *		Added multiplication of a matrix by a point
 *		Added AUX as a matrix type
 * 
 * \version 0.1.0
 *		Initial Release
 *
 * This lib requires:
 *
 * External Dependencies:
 *	GLEW (http://glew.sourceforge.net/)
 *
 * VSL Dependencies:
 *	VSShaderLib (http://www.lighthouse3d.com/very-simple-libs)
 *
 ---------------------------------------------------------------
</member>
<member name="T:VSMathLib.MatrixTypes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="70">
number of settable matrices
number of derived matrices
Enumeration of the matrix types
</member>
<member name="T:VSMathLib.ComputedMatrixTypes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="91">
Enumeration of derived matrices
</member>
<member name="F:VSMathLib.gInstance" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="100">
Singleton pattern
</member>
<member name="M:VSMathLib.getInstance" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="103">
Call this to get the single instance of VSMathLib
</member>
<member name="M:VSMathLib.setUniformBlockName(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="109">
Call this function to init the library if using uniform blocks
		  * Uniform blocks are considered to be shared amongst shaders
		  *
		  * \param blockName the name of the block

</member>
<member name="M:VSMathLib.setUniformName(VSMathLib.MatrixTypes,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="116">
Call this function to init the library 
		  * it associates the matrices with named uniforms
		  *
		  * \param matType the type of the matrix
		  * \param uniformName the name of the uniform variable 

</member>
<member name="M:VSMathLib.setUniformArrayIndexName(VSMathLib.MatrixTypes,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;,System.Int32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="124">
Call this function to init the library 
		  * it associates the matrices with named uniforms in
		  * the case where they are stored in an array
		  *
		  * \param matType the type of the matrix
		  * \param uniformName the name of the uniform variable 
		  * \param index the index of the array where the mat is located

</member>
<member name="M:VSMathLib.setUniformName(VSMathLib.ComputedMatrixTypes,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="135">
Call this function to init the library 
		  * it associates the matrices with named uniforms
		  *
		  * \param matType the type of the matrix
		  * \param uniformName the name of the uniform variable 

</member>
<member name="M:VSMathLib.setUniformArrayIndexName(VSMathLib.ComputedMatrixTypes,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;,System.Int32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="144">
Call this function to init the library 
		  * it associates the matrices with named uniforms in
		  * the case where they are stored in an array
		  *
		  * \param matType the type of the matrix
		  * \param uniformName the name of the uniform variable 
		  * \param index the index of the array where the mat is located

</member>
<member name="M:VSMathLib.translate(VSMathLib.MatrixTypes,System.Single,System.Single,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="155">
Similar to glTranslate*. 
		  *
		  * \param aType any value from MatrixTypes
		  * \param x,y,z vector to perform the translation

</member>
<member name="M:VSMathLib.translate(System.Single,System.Single,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="162">
Similar to glTranslate*. Applied to MODELVIEW only.
		  *
		  * \param x,y,z vector to perform the translation

</member>
<member name="M:VSMathLib.scale(VSMathLib.MatrixTypes,System.Single,System.Single,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="168">
Similar to glScale*.
		  *
		  * \param aType any value from MatrixTypes
		  * \param x,y,z scale factors

</member>
<member name="M:VSMathLib.scale(System.Single,System.Single,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="175">
Similar to glScale*. Applied to MODELVIEW only.
		  *
		  * \param x,y,z scale factors

</member>
<member name="M:VSMathLib.rotate(VSMathLib.MatrixTypes,System.Single,System.Single,System.Single,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="181">
Similar to glTotate*. 
		  *
		  * \param aType any value from MatrixTypes
		  * \param angle rotation angle in degrees
		  * \param x,y,z rotation axis in degrees

</member>
<member name="M:VSMathLib.rotate(System.Single,System.Single,System.Single,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="189">
Similar to glRotate*. Applied to MODELVIEW only.
		  *
		  * \param angle rotation angle in degrees
		  * \param x,y,z rotation axis in degrees

</member>
<member name="M:VSMathLib.loadIdentity(VSMathLib.MatrixTypes)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="196">
Similar to glLoadIdentity.
		  *
		  * \param aType any value from MatrixTypes

</member>
<member name="M:VSMathLib.multMatrix(VSMathLib.MatrixTypes,System.Single*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="202">
Similar to glMultMatrix.
		  *
		  * \param aType any value from MatrixTypes
		  * \param aMatrix matrix in column major order data, float[16]

</member>
<member name="M:VSMathLib.loadMatrix(VSMathLib.MatrixTypes,System.Single!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="209">
Similar to gLoadMatrix.
		  *
		  * \param aType any value from MatrixTypes
		  * \param aMatrix matrix in column major order data, float[16]

</member>
<member name="M:VSMathLib.pushMatrix(VSMathLib.MatrixTypes)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="217">
Similar to glPushMatrix
		  * 
		  * \param aType any value from MatrixTypes

</member>
<member name="M:VSMathLib.popMatrix(VSMathLib.MatrixTypes)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="223">
Similar to glPopMatrix
		  * 
		  * \param aType any value from MatrixTypes

</member>
<member name="M:VSMathLib.lookAt(System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="229">
Similar to gluLookAt
		  *
		  * \param xPos, yPos, zPos camera position
		  * \param xLook, yLook, zLook point to aim the camera at
		  * \param xUp, yUp, zUp camera's up vector

</member>
<member name="M:VSMathLib.perspective(System.Single,System.Single,System.Single,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="240">
Similar to gluPerspective
		  *
		  * \param fov vertical field of view
		  * \param ratio aspect ratio of the viewport or window
		  * \param nearp,farp distance to the near and far planes

</member>
<member name="M:VSMathLib.ortho(System.Single,System.Single,System.Single,System.Single,System.Single,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="248">
Similar to glOrtho and gluOrtho2D (just leave the 
		  * last two params blank).
		  *
		  * \param left,right coordinates for the left and right vertical 
		  * clipping planes
		  * \param bottom,top coordinates for the bottom and top horizontal 
		  * clipping planes
		  * \param nearp,farp distance to the near and far planes

</member>
<member name="M:VSMathLib.frustum(System.Single,System.Single,System.Single,System.Single,System.Single,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="260">
Similar to glFrustum
		  *
		  * \param left,right coordinates for the left and right vertical 
		  * clipping planes
		  * \param bottom,top coordinates for the bottom and top horizontal 
		  * clipping planes
		  * \param nearp,farp distance to the near and far planes

</member>
<member name="M:VSMathLib.invert(VSMathLib.MatrixTypes)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="271">
Inverts the named matrix
		  *
		  * \param aType any value from MatrixTypes

</member>
<member name="M:VSMathLib.getCameraPosition(System.Single*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="278">
Computes the position of the camera based on the view matrix
		*
		* \param res (float[3]) to return the camera position

</member>
<member name="M:VSMathLib.get(VSMathLib.MatrixTypes)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="284">
Similar to glGet
		  *
		  * \param aType any value from MatrixTypes
		  * \returns pointer to the matrix (float[16])

</member>
<member name="M:VSMathLib.get(VSMathLib.ComputedMatrixTypes)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="291">
Similar to glGet for computed matrices
		  *
		  * \param aType any value from ComputedMatrixTypes
		  * \returns pointer to the matrix (float[16] or float[9])

</member>
<member name="M:VSMathLib.matrixToGL(VSMathLib.MatrixTypes)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="299">
Updates either the buffer or the uniform variables 
		  * based on if the block name has been set
		  *
		  * \param aType any value from MatrixTypes

</member>
<member name="M:VSMathLib.matrixToGL(VSMathLib.ComputedMatrixTypes)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="306">
Updates either the buffer or the uniform variables 
		  * based on if the block name has been set
		  *
		  * \param aType any value from ComputedMatrixTypes

</member>
<member name="M:VSMathLib.matricesToGL" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="314">
Updates either the buffer or the uniform variables 
		  * based on if the block name has been set. It updates 
		  * all matrices whose uniform names have been provided

</member>
<member name="M:VSMathLib.multMatrixPoint(VSMathLib.MatrixTypes,System.Single*,System.Single*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="321">
Computes the multiplication of a matrix and a point 
		  *
		  * \param aType any value from MatrixTypes
		  * \param point a float[4] representing a point
		  * \param res a float[4] res = M * point

</member>
<member name="M:VSMathLib.multMatrixPoint(VSMathLib.ComputedMatrixTypes,System.Single*,System.Single*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="329">
Computes the multiplication of a computed matrix and a point 
		  *
		  * \param aType any value from ComputedMatrixTypes
		  * \param point a float[4] representing a point
		  * \param res a float[4] res = M * point

</member>
<member name="M:VSMathLib.multPointMatrix(System.Single*,VSMathLib.MatrixTypes,System.Single*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="337">
Computes the multiplication of a point and a matrix
		*
		* \param aType any value from MatrixTypes
		* \param point a float[4] representing a point
		* \param res a float[4] res = point * M

</member>
<member name="M:VSMathLib.crossProduct(System.Single*,System.Single*,System.Single*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="345">
vector cross product res = a x b
		  * Note: memory for the result must be allocatted by the caller
		  * 
		  * \param a,b the two input float[3]
		  * \param res the ouput result, a float[3]

</member>
<member name="M:VSMathLib.dotProduct(System.Single*,System.Single*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="353">
vector dot product 
		  * 
		  * \param a,b the two input float[3]
		  * \returns the dot product a.b

</member>
<member name="M:VSMathLib.normalize(System.Single*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="360">
normalize a vec3
</member>
<member name="M:VSMathLib.subtract(System.Single*,System.Single*,System.Single*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="363">
vector subtraction res = b - a
</member>
<member name="M:VSMathLib.add(System.Single*,System.Single*,System.Single*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="366">
vector addition res = a + b
</member>
<member name="M:VSMathLib.length(System.Single*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="369">
vector length
</member>
<member name="F:VSMathLib.mPointRes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="376">
aux variable to hold the result of vector ops
</member>
<member name="F:VSMathLib.mInit" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="379">
Has an init* function been called?
</member>
<member name="F:VSMathLib.mBlocks" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="382">
Using uniform blocks?
</member>
<member name="F:VSMathLib.mMatrixStack" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="385">
Matrix stacks for each matrix type
</member>
<member name="F:VSMathLib.mMatrix" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="388">
The storage for matrices
</member>
<member name="F:VSMathLib.mBlockName" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="392">
Stores the uniform block name
</member>
<member name="F:VSMathLib.mUniformName" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="395">
Names of the associated uniform variables
</member>
<member name="F:VSMathLib.mComputedMatUniformName" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="399">
Names of the associated uniform variables
</member>
<member name="F:VSMathLib.mNormal" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="403">
The normal matrix
</member>
<member name="F:VSMathLib.mMat3x3" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="411">
aux 3x3 matrix
</member>
<member name="M:VSMathLib.setIdentityMatrix(System.Single*,System.Int32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="416">
Set a float* to an identity matrix
		  *
		  * \param a float array with the matrix contents
		  * \param size the order of the matrix

</member>
<member name="M:VSMathLib.computeNormalMatrix" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="423">
Computes the 3x4 normal matrix based on the modelview matrix
</member>
<member name="M:VSMathLib.computeNormalMatrix3x3" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="425">
Computes the 3x3 normal matrix for use with glUniform
</member>
<member name="M:VSMathLib.computeNormalViewMatrix3x3" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="427">
Computes the 3x4 normal matrix considering only the view matrix
</member>
<member name="M:VSMathLib.computeNormalViewMatrix" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="429">
Computes the 3x3 normal matrix for the view matrix for use with glUniform
</member>
<member name="M:VSMathLib.computeNormalModelMatrix3x3" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="431">
Computes the 3x4 normal matrix considering only the model matrix
</member>
<member name="M:VSMathLib.computeNormalModelMatrix" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="433">
Computes the 3x3 normal matrix for the model matrix for use with glUniform
</member>
<member name="M:VSMathLib.computeDerivedMatrix(VSMathLib.ComputedMatrixTypes)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmathlib.h" line="436">
Computes Derived Matrices (4x4)
</member>
<member name="T:VSLogLib" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsloglib.h" line="1">
----------------------------------------------------------
 * \class VSLogLib
 *
 * Lighthouse3D
 *
 * VSLogLib - Very Simple Log Library
 *
 * \version 0.2.0
 *  - added streams 
 *  - usage of a define makes it possible to remove all
 *  logging from the application easily
 *	
 * \version 0.1.0
 *  - Initial Release
 *
 * This class provides a basic logging mechanism
 *
 * Full documentation at 
 * http://www.lighthouse3d.com/very-simple-libs
 *
 ---------------------------------------------------------------
</member>
<member name="M:VSLogLib.enableStream(std.basic_ostream&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte}&gt;*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsloglib.h" line="48">
set an output stream
</member>
<member name="M:VSLogLib.disableStream" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsloglib.h" line="50">
disable output stream, keep messages in the log
</member>
<member name="M:VSLogLib.addMessage(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;,BTEllipsis)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsloglib.h" line="53">
 Add a message, printf style
	  * \param format the same as the first parameter of printf
	  * \param ... the remaining params of printf

</member>
<member name="M:VSLogLib.dumpToFile(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsloglib.h" line="60">
Writes the log to a file
</member>
<member name="M:VSLogLib.dumpToString" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsloglib.h" line="64">
returns a string with the logs contents
</member>
<member name="M:VSLogLib.clear" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsloglib.h" line="67">
clear the log
</member>
<member name="F:VSLogLib.pLogVector" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsloglib.h" line="72">
The log itself
</member>
<member name="F:VSLogLib.pRes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsloglib.h" line="74">
just a string to return values
</member>
<member name="F:VSLogLib.pAux" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsloglib.h" line="76">
aux string to avoid malloc/dealloc
</member>
<member name="F:VSLogLib.pOuts" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsloglib.h" line="78">
the output stream
</member>
<member name="F:VSLogLib.pStreamEnabled" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsloglib.h" line="80">
stream enabled status
</member>
<member name="T:VSShaderLib" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="1">
----------------------------------------------------------
 * \class VSShaderLib
 *
 * Lighthouse3D
 *
 * VSShaderLib - Very Simple Shader Library
 *
 * Full documentation at 
 * http://www.lighthouse3d.com/very-simple-libs
 *
 * This class aims at making life simpler
 * when using shaders and uniforms
 *
 * version 0.2.2
 *		Added image load store types
 *
 * version 0.2.1
 *		Added more attrib defs, namely
 *			tangents, bi tangents, and 4 custom
 * 
 * version 0.2.0
 *		Added methods to set uniforms
 *		Added methods to set blocks
 *		Renamed to VSShaderLib
 *
 * version 0.1.0 
 * Initial Release
 *
 * This lib requires:
 *
 * GLEW (http://glew.sourceforge.net/)
 *
 ---------------------------------------------------------------
</member>
<member name="T:VSShaderLib.AttribType" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="57">
Types of Vertex Attributes
</member>
<member name="T:VSShaderLib.ShaderType" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="70">
Types of Shaders
</member>
<member name="F:VSShaderLib.MAX_TEXTURES" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="83">
Just a helper define
</member>
<member name="M:VSShaderLib.init" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="94">
Init should be called for every shader instance
	  * prior to any other function

</member>
<member name="M:VSShaderLib.loadShader(VSShaderLib.ShaderType,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="99">
Loads the text in the file to the source of the specified shader 
	  *
	  * \param st one of the enum values of ShaderType
	  *	\param filename the file where the source is to be found

</member>
<member name="M:VSShaderLib.setProgramOutput(System.Int32,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="107">
bind a user-defined varying out variable to a 
	  * fragment shader color number
	  * Note: linking is required for this operation to take effect
	  * (call method prepareProgram afterwards)
	  *
	  * \param index the fragment colour number
	  * \param the name of the fragment's shader variable

</member>
<member name="M:VSShaderLib.getProgramOutput(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="117">
returns the fragment shader color number bound to 
	  * a user-defined varying out variable
	  * 
	  * Note: linking is required for this operation to take effect
	  * (call method prepareProgram afterwards)
	  *
	  * \param the name of the fragment's shader variable
	  * \returns the fragment colour number

</member>
<member name="M:VSShaderLib.setVertexAttribName(VSShaderLib.AttribType,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="128">
Defines semantics for the input vertex attributes. This is
	  * required for other libraries to know how to send data to the shader
	  * Note: linking is required for this operation to take effect
	  * (call method prepareProgram)
	  *
	  * \param the semantic of the attribute
	  * \param the name of the vertex attribute

</member>
<member name="M:VSShaderLib.prepareProgram" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="138">
Prepares program for usage. Links it and collects information
	  * about uniform variables and uniform blocks

</member>
<!-- Discarding badly formed XML document comment for member 'M:VSShaderLib.setUniform(std.basic_string<System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator<System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte>>,System.Void*)'. -->
<!-- Discarding badly formed XML document comment for member 'M:VSShaderLib.setUniform(std.basic_string<System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator<System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte>>,System.Int32)'. -->
<!-- Discarding badly formed XML document comment for member 'M:VSShaderLib.setUniform(std.basic_string<System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator<System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte>>,System.Single)'. -->
<member name="M:VSShaderLib.setBlock(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;,System.Void*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="149">
sets a uniform block as a whole
</member>
<member name="M:VSShaderLib.setBlockUniform(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;,System.Void*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="151">
sets a uniform inside a named block
</member>
<member name="M:VSShaderLib.setBlockUniformArrayElement(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;,System.Int32,System.Void*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="155">
sets an element of an array of uniforms inside a block
</member>
<member name="M:VSShaderLib.getProgramIndex" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="161">
returns the program index
</member>
<member name="M:VSShaderLib.getShaderIndex(VSShaderLib.ShaderType)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="163">
returns a shader index
</member>
<member name="M:VSShaderLib.getShaderInfoLog(VSShaderLib.ShaderType)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="166">
returns a string with a shader's infolog
</member>
<member name="M:VSShaderLib.getProgramInfoLog" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="168">
returns a string with the program's infolog
</member>
<member name="M:VSShaderLib.getAllInfoLogs" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="170">
returns a string will all info logs
</member>
<member name="M:VSShaderLib.isProgramValid" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="172">
returns GL_VALIDATE_STATUS for the program 
</member>
<member name="M:VSShaderLib.isShaderCompiled(VSShaderLib.ShaderType)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="174">
returns true if compiled, false otherwise
</member>
<member name="M:VSShaderLib.isProgramLinked" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="176">
returns true if linked, false otherwise
</member>
<member name="T:VSShaderLib.uniforms" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="184">
stores information for uniforms
</member>
<member name="T:VSShaderLib.blockUniforms" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="192">
stores information for block uniforms
</member>
<member name="T:VSShaderLib.UniformBlock" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="200">
stores information for a block and its uniforms
</member>
<member name="F:VSShaderLib.UniformBlock.size" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="204">
size of the uniform block
</member>
<member name="F:VSShaderLib.UniformBlock.buffer" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="206">
buffer bound to the index point
</member>
<member name="F:VSShaderLib.UniformBlock.bindingIndex" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="208">
binding index
</member>
<member name="F:VSShaderLib.UniformBlock.uniformOffsets" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="210">
uniforms information
</member>
<member name="F:VSShaderLib.pInited" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="216">
stores if init has been called
</member>
<member name="F:VSShaderLib.spBlockCount" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="220">
blockCount is used to assign binding indexes
</member>
<member name="F:VSShaderLib.spBlocks" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="223">
Stores info on all blocks found
</member>
<member name="F:VSShaderLib.spGLShaderTypes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="226">
stores the OpenGL shader types
</member>
<member name="F:VSShaderLib.spStringShaderTypes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="229">
stores the text string related to each type
</member>
<member name="F:VSShaderLib.pResult" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="232">
aux string used to return the shaders infologs
</member>
<member name="F:VSShaderLib.pShader" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="235">
stores the shaders and program indices
</member>
<member name="F:VSShaderLib.pUniforms" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="238">
stores info on the uniforms
</member>
<member name="M:VSShaderLib.addUniforms" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="243">
aux function to get info on the uniforms referenced by the shaders
</member>
<member name="M:VSShaderLib.addUniform(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;,System.UInt32,System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="246">
aux function to store the info of a uniform
</member>
<member name="M:VSShaderLib.addBlocks" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="249">
aux function to get info on the blocks referenced by the shaders
</member>
<member name="M:VSShaderLib.typeSize(System.Int32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="252">
determines the size in bytes based on the OpenGL type
</member>
<member name="M:VSShaderLib.textFileRead(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsshaderlib.h" line="255">
aux function to read the shader's source code from file
</member>
<member name="T:VSResourceLib.Material" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="87">
helper structure for derived classes
</member>
<member name="T:VSResourceLib.MaterialSemantics" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="98">
material semantics
</member>
<member name="M:VSResourceLib.render" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="144">
render the resource
</member>
<member name="M:VSResourceLib.addTexture(System.UInt32,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="148">
virtual function to be implemented in derived classes
assigns a texture (from an image) to a unit
</member>
<member name="F:VSResourceLib.MAX_TEXTURES" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="165">
const to ease future upgrades
</member>
<member name="M:VSResourceLib.setMaterialBlockName(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="167">
Sets the shader's material block name
</member>
<member name="M:VSResourceLib.setUniformSemantics(VSResourceLib.MaterialSemantics,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="171">
set the semantics of the uniforms inside the named block
</member>
<member name="M:VSResourceLib.getErrors" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="174">
returns errors found when loading the resource
it is up to the derived classes to add meaningfull
information
</member>
<member name="M:VSResourceLib.getInfo" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="178">
returns information about the loaded resource
it is up to the derived classes to add meaningfull
information
</member>
<member name="M:VSResourceLib.getScaleForUnitCube" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="182">
returns the scale factor to display the model in a unit cube
note: may not apply to all subclasses
</member>
<member name="F:VSResourceLib.sMaterialBlockName" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="193">
shader's material block name
</member>
<member name="M:VSResourceLib.setMaterial(VSResourceLib.Material*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="197">
set the material uniforms
</member>
<member name="F:VSResourceLib.mVSML" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="204">
keep a pointer to VSMathLib singleton
</member>
<member name="F:VSResourceLib.mCenter" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="206">
Logs for errors and model Information
center of the model
</member>
<member name="F:VSResourceLib.mScaleToUnitCube" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsresourcelib.h" line="210">
scale factor for the model to fill a unit cube (-1, 1)
</member>
<member name="M:VSModelLib.setGenerationMode(System.Int32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmodellib.h" line="92">
defines what buffers to generate
	* \param mode Bitwise OR of masks that indicate the buffers to be generated (see enum Mode)

</member>
<member name="M:VSModelLib.getGenerationMode" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmodellib.h" line="97">
get the current set of buffers to generate (see enum Mode)

</member>
<member name="M:VSModelLib.render" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmodellib.h" line="105">
implementation of the superclass abstract method
</member>
<member name="M:VSModelLib.setMaterialColor(VSResourceLib.MaterialColors)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmodellib.h" line="107">
set a predefined material
</member>
<member name="M:VSModelLib.setColor(VSResourceLib.MaterialSemantics,System.Single,System.Single,System.Single,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmodellib.h" line="109">
set a color component for all meshes
</member>
<member name="M:VSModelLib.setColor(VSResourceLib.MaterialSemantics,System.Single*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmodellib.h" line="111">
set a color component for all meshes
</member>
<member name="M:VSModelLib.setColor(System.UInt32,VSResourceLib.MaterialSemantics,System.Single*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmodellib.h" line="113">
set a color component for a particular mesh
</member>
<member name="M:VSModelLib.addTexture(System.UInt32,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmodellib.h" line="118">
load and set a texture for the object
</member>
<member name="M:VSModelLib.addCubeMapTexture(System.UInt32,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsS" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmodellib.h" line="120">
load and set a cubemap texture for a object
</member>
<member name="M:VSModelLib.setTexture(System.UInt32,System.UInt32,System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmodellib.h" line="125">
set an existing texture ID for a texture unit
</member>
<member name="F:VSModelLib.mMyMeshes" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmodellib.h" line="173">
the mesh collection
</member>
<member name="F:VSModelLib.mMyMeshesAux" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsmodellib.h" line="186">
aux pre processed mesh collection
</member>
<member name="T:VSGLInfoLib" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="1">
----------------------------------------------------------
 * \class VSGLInfoLib
 *
 * Lighthouse3D
 *
 * VSGLInfoLib - Very Simple GL Information Library
 *
 *	
 * \version 0.1.0
 *  - Initial Release
 *
 * This class provides information about GL stuff
 *
 * Full documentation at 
 * http://www.lighthouse3d.com/very-simple-libs
 *
 ---------------------------------------------------------------
</member>
<member name="M:VSGLInfoLib.setOutputStream(std.basic_ostream&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte}&gt;*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="48">
sets the output stream for the messages
</member>
<member name="M:VSGLInfoLib.getGeneralInfo" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="52">
get vendor, version and other general info
</member>
<member name="M:VSGLInfoLib.isExtensionSupported(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="55">
checks if an extension is supported
</member>
<member name="M:VSGLInfoLib.getBufferNames" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="60">
returns a vector with all named buffers
</member>
<member name="M:VSGLInfoLib.getCurrentBufferInfo" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="62">
display current binded buffer info
</member>
<member name="M:VSGLInfoLib.getBufferInfo(System.UInt32,System.Int32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="64">
display the buffer information
</member>
<member name="M:VSGLInfoLib.getTextureNames" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="69">
returns a vector with all named textures 
</member>
<member name="M:VSGLInfoLib.getCurrentTexture(System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="71">
get the current texture bound to target
</member>
<member name="M:VSGLInfoLib.getCurrentTextureActiveUnitInfo" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="73">
get active texture unit
</member>
<member name="M:VSGLInfoLib.getCurrentTextureInfo" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="75">
display current texture bindings
</member>
<member name="M:VSGLInfoLib.getTextureInfo(System.UInt32,System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="77">
display detailed texture info
</member>
<member name="M:VSGLInfoLib.getProgramNames" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="82">
returns a vector with all named programs 
</member>
<member name="M:VSGLInfoLib.getShaderNames" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="84">
returns a vector with all named shaders 
</member>
<member name="M:VSGLInfoLib.getVAONames" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="86">
returns a vector with all named VAOs 
</member>
<member name="M:VSGLInfoLib.getVAOInfo(System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="88">
display detailed VAO info
</member>
<member name="M:VSGLInfoLib.getUniformsInfo(System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="90">
display detailed info for uniforms in a program
</member>
<member name="M:VSGLInfoLib.getUniformInfo(System.UInt32,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="92">
display a uniform's value(s)
</member>
<member name="M:VSGLInfoLib.getUniformInBlockInfo(System.UInt32,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="95">
display the values for a uniform in a named block
</member>
<member name="M:VSGLInfoLib.getAttributesInfo(System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="99">
display detailed info for attributes in a program
</member>
<member name="M:VSGLInfoLib.getProgramInfo(System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsglinfolib.h" line="101">
display detailed info for a program
</member>
<member name="T:VSProfileLib" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="1">
----------------------------------------------------------
 * \class VSProfileLib
 *
 * Lighthouse3D
 *
 * VSProfileLib - Very Simple Profile Library
 *
 * Full documentation at 
 * http://www.lighthouse3d.com/very-simple-libs 
 *
 * Simple profiler class for both CPU and GPU
 * uses ARB_timer_query extension
 *
 * \version 0.2.1
 * renamed to VSProfileLib
 *
 * \version 0.2.0
 * uses OpenGL timers
 *
 * version 0.1.0
 * Initial Release
 *
 ---------------------------------------------------------------
</member>
<member name="F:VSProfileLib.sDump" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="71">
String that contains the profile report
</member>
<member name="M:VSProfileLib.DumpLevels" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="73">
create the profile report and store in sDump
</member>
<member name="M:VSProfileLib.Reset" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="75">
resets profile data
</member>
<member name="M:VSProfileLib.CollectQueryResults" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="78">

</member>
<member name="M:VSProfileLib.#ctor(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;,System.Boolean)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="81">
begin profile section
</member>
<member name="M:VSProfileLib.Dispose" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="83">
end profile section
</member>
<member name="F:VSProfileLib.s.parent" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="92">
Index of the parent section 
		  * in the previous level

</member>
<member name="F:VSProfileLib.s.name" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="96">
name of the section
</member>
<member name="F:VSProfileLib.s.startTime" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="98">
stores the time when the section starts
</member>
<member name="F:VSProfileLib.s.queriesGL" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="100">
query indexes for the beginning 
and end of the section
</member>
<member name="F:VSProfileLib.s.totalQueryTime" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="103">
wasted time running the 
		  * profiler code for the section

</member>
<member name="F:VSProfileLib.s.calls" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="108">
Total number of calls
</member>
<member name="F:VSProfileLib.s.totalTime" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="110">
total time spend in the profiler section
</member>
<member name="F:VSProfileLib.s.profileGL" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="112">

</member>
<member name="T:VSProfileLib.l" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="116">
Information about a level of profiling
</member>
<member name="F:VSProfileLib.l.sec" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="118">
set of sections in this level
</member>
<member name="F:VSProfileLib.l.cursor" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="120">
stores the current profile section for
		  * each level 
</member>
<member name="F:VSProfileLib.sDisp" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="125">
space displacement for dump string formating
</member>
<member name="F:VSProfileLib.sLevels" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="130">
list of all levels
</member>
<member name="F:VSProfileLib.sCurrLevel" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="132">
current level
</member>
<member name="F:VSProfileLib.sTotalLevels" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="134">
total number of levels
</member>
<member name="M:VSProfileLib.DumpLevels(System.Int32,System.Int32,System.Double)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="139">
Puts the profile result in sDump
</member>
<member name="M:VSProfileLib.createNewSection(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Double,System.Boolean)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="141">
Creates a new section
</member>
<member name="M:VSProfileLib.searchSection(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="143">
returns the index of a section
</member>
<member name="M:VSProfileLib.updateSection(System.Int32,System.Double)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="145">
updates the times in a section
</member>
<member name="M:VSProfileLib.accumulate" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="147">
add the time spent in the current section
</member>
<member name="M:VSProfileLib.GetTicks(System.Double*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsprofilelib.h" line="149">
Gets the time
</member>
<member name="M:VSFontLib.load(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="57">
Loads the font data. It assumes that there is a file
		  * fontName.xml with the font data and a fontName.tga with the 
		  * font image
		  * \param fontName the file name without extension
		  * \return true if successfull, false otherwise

</member>
<member name="M:VSFontLib.render" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="65">
Render the sentence
</member>
<member name="M:VSFontLib.setFixedFont(System.Boolean)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="68">
Use this for fixed sized fonts

</member>
<member name="M:VSFontLib.genSentence" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="72">
Allocate a slot for a sentence
		  * \return a slot index

</member>
<member name="M:VSFontLib.deleteSentence(System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="77">
Clear a slot 
		  * \param index a previously allocated slot index 

</member>
<member name="M:VSFontLib.prepareSentence(System.UInt32,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="82">
Prepares a sentence in a given slot index
		  * \param index the index where the sentence will be stored
		  * \param sentence the string to be displayed

</member>
<member name="M:VSFontLib.renderSentence(System.Int32,System.Int32,System.UInt32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="88">
Render a sentence. Note that screen 
		  * coordinates (x,y), have (0,0)
		  * as the top left of the screen
		  * \param x the x screen cordinate
		  * \param y the y screen coordinate
		  * \param index a previously allocated slot index  

</member>
<member name="M:VSFontLib.renderAndDiscard(System.Int32,System.Int32,std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="97">
Shortcut to render a string with a single function call
		  * This is equivalent to calling genSentence, 
		  * prepareSentence, renderSentence, and finally
		  * deleteSentence

</member>
<member name="M:VSFontLib.setColor(System.Single*)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="104">
Sets the emissive component of the font color
</member>
<member name="M:VSFontLib.setColor(System.Single,System.Single,System.Single,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="106">
Sets the emissive component of the font color
</member>
<member name="F:VSFontLib.mFixedSize" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="110">
Fixed size?
</member>
<member name="T:VSFontLib.VSFLChar" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="113">
This class contains information for individual chars
	  * x1,x2,y1,y2 are the texture coordinates, width, A, and C 
	  * the remaining char properties

</member>
<member name="F:VSFontLib.VSFLChar.width" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="121">
Char width
</member>
<member name="T:VSFontLib.VSFLSentence" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="127">
\brief Stores the information to render a string
	  * 
	  * A sentence stores the VAO index required to render the string
	  * and free the resources both the VAO and the attribute buffers).

</member>
<member name="F:VSFontLib.VSFLSentence.mVAO" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="135">
VAO index
</member>
<member name="F:VSFontLib.VSFLSentence.mBuffers" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="137">
Vertex and texcoord buffers
</member>
<member name="F:VSFontLib.VSFLSentence.mSize" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="139">
String size
</member>
<member name="M:VSFontLib.VSFLSentence.initSentence(System.UInt32,System.UInt32*,System.Int32)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="145">
sets the instance variables
</member>
<member name="M:VSFontLib.VSFLSentence.clear" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="147">
deletes the VAO and the buffers
</member>
<member name="M:VSFontLib.VSFLSentence.getVAO" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="150">
returns the VAO index
</member>
<member name="M:VSFontLib.VSFLSentence.getVertexBuffer" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="152">
returns the vertex buffer index
</member>
<member name="M:VSFontLib.VSFLSentence.getTexCoordBuffer" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="154">
returns the texCoord buffer index
</member>
<member name="M:VSFontLib.VSFLSentence.getSize" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="156">
returns the 
</member>
<member name="F:VSFontLib.mChars" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="160">
Font char data, results from parsing 
		 * the XML file for the font 
</member>
<member name="F:VSFontLib.mHeight" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="163">
font char height
</member>
<member name="F:VSFontLib.mNumChars" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="165">
total chars parsed
</member>
<member name="F:VSFontLib.mSentences" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="167">
a pointer for the VSML singleton
Contains all the sentences
</member>
<member name="F:VSFontLib.mDeletedSentences" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="173">
contains a list of the indexes of free slots
</member>
<member name="F:VSFontLib.mFontTex" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="177">
Font Texture index
</member>
<member name="F:VSFontLib.mPrevDepth" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="179">
Previous DEPTH_TEST settings
</member>
<member name="F:VSFontLib.mPrevBlend" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="181">
Previous BLEND settings
</member>
<member name="F:VSFontLib.mPrevBlendDst" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="183">
Previous BLEND_DST settings
</member>
<member name="F:VSFontLib.mPrevBlendSrc" decl="false" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="185">
Previous BLEND_SRC settings
</member>
<member name="M:VSFontLib.prepareRender(System.Single,System.Single)" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="188">
Prepare matrices for rendering at (x,y) window coordinates
		  * \param x the x window coordinate
		  * \param y the y window coordinate

</member>
<member name="M:VSFontLib.restoreRender" decl="true" source="c:\users\rafael\documents\github\l-systems_vsl\vsl\include\vsl\vsfontlib.h" line="194">
Restore the original matrices prior to prepareRender
</member>
</members>
</doc>